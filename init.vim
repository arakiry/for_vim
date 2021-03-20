" ファイルのロード
runtime! set.vim
runtime! map.vim


" 日本語の設定
augroup Normal_in_US
    autocmd!
    autocmd InsertLeave * :call system('/usr/local/bin/im-select com.apple.keylayout.US')
augroup END
