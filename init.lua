-- 日本語の設定
if os.execute('uname -a | grep Mac') ~= '' then
    vim.cmd('augroup lua')
    vim.cmd('autocmd!')
    vim.cmd("autocmd InsertEnter * :call system('/usr/local/bin/im-select com.apple.keylayout.US')")
    vim.cmd('augroup END')
end
if os.execute('uname -a | grep microsoft') ~= '' then
    vim.cmd('augroup lua')
    vim.cmd('autocmd!')
    vim.cmd("autocmd InsertEnter * :call system('~/.config/nvim/zenhan.exe 0')")
    vim.cmd('augroup END')
end

vim.g.mapleader = ' '

require('keys')
require('lazyvim')
require('options')
require('theme')
