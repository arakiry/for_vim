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


" Command

" 現在開いているパスを自動補完
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h') . '/' :'%%'

" Jsonをきれいに表示する
cnoremap json %ijq .<CR>


" Plugin

" fzf
" ripgrepより遅いため、使わない
" nnoremap <silent> <Leader>a :<C-u>Ag<CR>
nnoremap <silent> <Leader>r :<C-u>Rg<CR>
nnoremap <silent> <Leader>f :<C-u>Files<CR>
nnoremap <silent> <Leader>b :<C-u>Buffers<CR>
nnoremap <silent> <Leader>h :<C-u>History<CR>


" fugitive
nnoremap <silent> <Leader>gs :Git status<CR>
nnoremap <silent> <Leader>ga :Git add
nnoremap <Leader>gc :Git commit -m ''<Left>
nnoremap <Leader>gp :Git push
nnoremap <silent> <Leader>diff :Gvdiffsplit<CR>

" Fern
nnoremap <silent> <C-s> :Fern . -reveal=% -drawer -toggle<CR>

" Fern preview
function! s:fern_settings() abort
  nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
  nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
  nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
  nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
endfunction

augroup fern-settings
  autocmd!
  autocmd FileType fern call s:fern_settings()
augroup END

" copilot
inoremap <C-n> <Plug>(copilot-next)
inoremap <C-p> <Plug>(copilot-previous)

" coc
nnoremap <silent> g[ <Plug>(coc-diagnostic-prev)
nnoremap <silent> g] <Plug>(coc-diagnostic-next)
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gr <Plug>(coc-references)
nnoremap rn <Plug>(coc-rename)
nnoremap qf <Plug>(coc-fix-current)
nnoremap <silent><nowait> <Leader>a :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> <Leader>o :<C-u>CocList outline<cr>
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
