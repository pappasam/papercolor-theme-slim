local luaassert = require('luassert')
local busted = require('busted')
local uv = vim.uv
local Paths = require('test.cmakeconfig.paths')

luaassert:set_parameter('TableFormatLevel', 100)

local quote_me = '[^.%w%+%-%@%_%/]' -- complement (needn't quote)

--- @param str string
--- @return string
local function shell_quote(str)
  if string.find(str, quote_me) or str == '' then
    return '"' .. str:gsub('[$%%"\\]', '\\%0') .. '"'
  end
  return str
end

--- Functions executing in the context of the test runner (not the current nvim test session).
--- @class test.testutil
local M = {
  paths = Paths,
}

--- @param path string
--- @return boolean
function M.isdir(path)
  if not path then
    return false
  end
  local stat = uv.fs_stat(path)
  if not stat then
    return false
  end
  return stat.type == 'directory'
end

--- (Only on Windows) Replaces yucky "\\" slashes with delicious "/" slashes in a string, or all
--- string values in a table (recursively).
---
--- @generic T: string|table
--- @param obj T
--- @return T|nil
function M.fix_slashes(obj)
  if not M.is_os('win') then
    return obj
  end
  if type(obj) == 'string' then
    local ret = string.gsub(obj, '\\', '/')
    return ret
  elseif type(obj) == 'table' then
    --- @cast obj table<any,any>
    local ret = {} --- @type table<any,any>
    for k, v in pairs(obj) do
      ret[k] = M.fix_slashes(v)
    end
    return ret
  end
  assert(false, 'expected string or table of strings, got ' .. type(obj))
end

