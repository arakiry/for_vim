" ファイルのロード
runtime! set.vim
runtime! map.vim


" 日本語の設定
augroup Normal_in_US
    autocmd!
    autocmd InsertLeave * :call system('~/.config/nvim/zenhan.exe 0')
augroup END
