" leaderの設定
let mapleader = " "

" ファイルのロード
runtime! set.vim
runtime! map.vim
runtime! function.vim

" 日本語の設定
augroup Normal_in_US
    autocmd!
    autocmd InsertLeave * :call system('/usr/local/bin/im-select com.apple.keylayout.US')
augroup END


"dein Scripts-----------------------------
if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#load_toml('~/.config/nvim/dein.toml')
"  call dein#load_toml('~/.config/nvim/dein_lazy.toml', { 'lazy': 1 })

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif
"End dein Scripts-------------------------
