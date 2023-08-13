-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
local cmd = vim.cmd
opt.shell = "powershell"
opt.shellcmdflag = "-command"
opt.shellquote = "\\"
opt.shellxquote = ""
opt.clipboard = "unnamedplus"

-- Default format
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- C8 Lua2 Other4
cmd([[
  augroup IndentSettings
    autocmd!
    autocmd FileType c setlocal shiftwidth=8 tabstop=8
    autocmd FileType lua setlocal shiftwidth=2 tabstop=2
  augroup END
]])

