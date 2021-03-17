" Normal

" 表示行単位で上下移動
nnoremap j gj
nnoremap k gk

" 行の中で左右端移動
nnoremap H 0
nnoremap L $

" ウィンドウのスプリット
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

" 削除をペーストしない
nnoremap d "_d
xnoremap d "_d
xnoremap p "_dP


" Visual

" インデント調整で、選択を解除しないようにする
vnoremap > >gv
vnoremap < <gv


" Insert

" インサート中でも移動できるようにする
inoremap <C-j> <down>
inoremap <C-k> <up>
" inoremap <C-l> <Right>
" inoremap <C-h> <Left>

" タグの補完
inoremap {<Enter> {}<Left><CR><ESC>O
inoremap [<Enter> []<Left><CR><ESC>O
inoremap (<Enter> ()<Left><CR><ESC>O


" Command

" 現在開いているパスを自動補完
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h') . '/' :'%%'

" Jsonをきれいに表示する
cnoremap json %ijq .<CR>


" Plugin

" fugitive
nnoremap <silent> gs :Gstatus<CR>
nnoremap <silent> ga :Gadd
cnoremap gcm Gcommit -m ''<Left>
nnoremap gp :Gpush
nnoremap <silent> diff :Gvdiffsplit<CR>

