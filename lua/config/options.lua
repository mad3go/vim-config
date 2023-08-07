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

cmd('set tabstop=4')
cmd('set shiftwidth=4')
cmd('set expandtab')
cmd([[
    augroup IndentSettings
        autocmd!
        autocmd FileType c setlocal shiftwidth=8
    augroup END
]])
