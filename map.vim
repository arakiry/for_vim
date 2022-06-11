" Normal

" 表示行単位で上下移動
nnoremap j gj
nnoremap k gk

" 行の中で左右端移動
nnoremap H 0
nnoremap L $

" ウィンドウのスプリット
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l
" nnoremap <C-h> <C-w>h

" 削除をペーストしない
nnoremap d "_d
xnoremap d "_d
xnoremap p "_dP

" タブの移動
nnoremap <Tab>l :+tabmove<Enter>
nnoremap <Tab>h :-tabmove<Enter>

" ハイライトの削除
nnoremap <silent> <Esc> :noh<CR>

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
nnoremap <silent> <Leader>gs :Git status<CR>
nnoremap <silent> <Leader>ga :Git add
nnoremap <Leader>gc :Git commit -m ''<Left>
nnoremap <Leader>gp :Git push
nnoremap <silent> <Leader>diff :Gvdiffsplit<CR>

" Fern
nnoremap <silent> <C-s> :Fern . -reveal=% -drawer -toggle<CR>

" copilot
inoremap <C-n> <Plug>(copilot-next)
inoremap <C-p> <Plug>(copilot-previous)
