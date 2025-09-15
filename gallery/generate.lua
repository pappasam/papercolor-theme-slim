local filetypes = {
  c = "sample.c",
  css = "sample.css",
  go = "sample.go",
  html = "sample.html",
  python = "sample.py",
  rust = "sample.rs",
  toml = "sample.toml",
  typescript = "sample.ts",
  typescriptreact = "sample.tsx",
  vim = "sample.vim",
}

local colorschemes = { dark = "PaperColorSlim", light = "PaperColorSlimLight" }

vim.lsp.stop_client(vim.lsp.get_clients(), true)
vim.diagnostic.enable(false)

for ft, sample in pairs(filetypes) do
  vim.cmd("edit ./inputs/" .. sample)
  vim.cmd("silent! filetype detect")
  for color, colorscheme in pairs(colorschemes) do
    vim.lsp.stop_client(vim.lsp.get_clients(), true)
    vim.diagnostic.enable(false)
    vim.cmd("colorscheme " .. colorscheme)
    vim.cmd("redraw!")
    vim.cmd("echo ''")
    vim.cmd("silent! messages clear")
    vim.fn.system(
      "scrot --overwrite --focused ./outputs/" .. ft .. "_" .. color .. ".png"
    )
    vim.fn.system("sleep 2")
  end
end
