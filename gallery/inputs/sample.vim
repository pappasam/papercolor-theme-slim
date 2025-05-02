" accepts a string value for compatibility with the commandline
function! s:get_repl(config) abort
  let t_config = type(a:config)
  if t_config == v:t_string && len(a:config) > 0
    if a:config[0] == '#' || a:config[0] == '{'
      let parsed = eval(a:config)
      return #{cmd: parsed.cmd,
            \ repl_type: get(parsed, 'repl_type', ''),
            \ open_window: get(parsed, 'open_window', g:repl.open_window_default),
            \ filetype: get(parsed, 'filetype', '')}
    else
      return #{cmd: a:config,
            \ repl_type: '',
            \ open_window: g:repl.open_window_default,
            \ filetype: ''}
    endif
  elseif t_config == v:t_dict
    return #{cmd: a:config.cmd,
          \ repl_type: get(a:config, 'repl_type', ''),
          \ open_window: get(a:config, 'open_window', g:repl.open_window_default),
          \ filetype: get(a:config, 'filetype', '')}
  else
    throw 'nvim-repl config for ' .. &filetype .. 'is neither a String nor a Dict'
  endif
endfunction

function! repl#open(...) abort " takes 0 or 1 arguments (dict)
  if s:repl_id_job_exists()
    call repl#warning('already open, try `:ReplDetach` or `:ReplClose`')
    return
  endif
  if a:0 == 0
    let config = s:get_repl(get(g:repl.filetype_commands, &filetype, g:repl.default))
  elseif a:0 == 1
    let config = s:get_repl(a:1)
  else
    throw 'nvim-repl: repl#open only takes 0 or 1 arguments'
  endif
  let current_window_id = win_getid()
  execute config.open_window
  let old_shell = &shell
  if old_shell == 'powershell'
    set shell=cmd
  endif
  let jobopts = #{term: v:true}
  if config.repl_type == 'aider'
    let jobopts.on_stdout = luaeval('require("repl.jobstart").on_stdout_aider')
  endif
  let repl_data = #{job_id: jobstart(config.cmd, jobopts), config: config}
  let b:repl_data = repl_data " set in terminal buffer
  setlocal nonumber nornu nobuflisted
  autocmd BufHidden <buffer> call s:cleanup(expand('<abuf>'))
  call win_gotoid(current_window_id)
  let b:repl_data = repl_data " set in repl buffer
  let &shell = old_shell
  let s:active_repls[repl_data.job_id] = [expand('%:.'), config]
  call repl#info('opened!')
endfunction
