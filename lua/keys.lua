-- Normal

-- 表示行単位で上下移動
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true })

-- 行の中で左右端移動
vim.api.nvim_set_keymap('', 'H', '0', { noremap = true })
vim.api.nvim_set_keymap('', 'L', '$', { noremap = true })

-- 削除をペーストしない
vim.api.nvim_set_keymap('n', 'd', '"_d', { noremap = true })
vim.api.nvim_set_keymap('x', 'd', '"_d', { noremap = true })
vim.api.nvim_set_keymap('x', 'p', '"_dP', { noremap = true })
vim.api.nvim_set_keymap('n', 'x', '"_x', { noremap = true })

-- タブの移動
vim.api.nvim_set_keymap('n', '<Tab>l', ':+tabmove<Enter>', { noremap = true})
vim.api.nvim_set_keymap('n', '<Tab>h', '-tabmove<Enter>', { noremap = true})

-- ハイライトの削除
vim.api.nvim_set_keymap('n', '<Esc>', ':noh<CR>', { silent = true, noremap = true})


-- Visual

-- インデント調整で、選択を解除しないようにする
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true })
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true })


-- Insert

-- インサート中でも移動できるようにする
vim.api.nvim_set_keymap('i', '<C-j>', '<down>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<up>', { noremap = true })


-- Command

-- 現在開いているパスを自動補完
-- vim.api.nvim_set_keymap('c', "<expr> %% getcmdtype() == ':' ? expand('%:h') . '/' :'%%'", { cnoremap = true })

-- Jsonをきれいに表示する
-- vim.api.nvim_set_keymap('c', 'json %ijq .<CR>', { cnoremap = true })


-- Plugin

-- fzf
-- ripgrepより遅いため、使わない
-- nnoremap <silent> <Leader>r :<C-u>Rg<CR>
-- nnoremap <silent> <Leader>f :<C-u>Files<CR>
-- nnoremap <silent> <Leader>b :<C-u>Buffers<CR>
-- nnoremap <silent> <Leader>h :<C-u>History<CR>


-- fugitive
-- nnoremap <silent> <Leader>gs :Git status<CR>
-- nnoremap <silent> <Leader>ga :Git add
-- nnoremap <Leader>gc :Git commit -m ''<Left>
-- nnoremap <Leader>gp :Git push
-- nnoremap <silent> <Leader>diff :Gvdiffsplit<CR>

-- Fern
-- nnoremap <silent> <C-s> :Fern . -reveal=% -drawer -toggle<CR>

-- Fern preview
-- function! s:fern_settings() abort
--   nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
--   nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
--   nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
--   nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)
-- endfunction

-- augroup fern-settings
--   autocmd!
--   autocmd FileType fern call s:fern_settings()
-- augroup END

-- copilot
-- inoremap <C-n> <Plug>(copilot-next)
-- inoremap <C-p> <Plug>(copilot-previous)

-- coc
-- nnoremap <silent> g[ <Plug>(coc-diagnostic-prev)
-- nnoremap <silent> g] <Plug>(coc-diagnostic-next)
-- nnoremap <silent> gd <Plug>(coc-definition)
-- nnoremap <silent> gr <Plug>(coc-references)
-- nnoremap rn <Plug>(coc-rename)
-- nnoremap qf <Plug>(coc-fix-current)
-- nnoremap <silent><nowait> <Leader>a :<C-u>CocList diagnostics<cr>
-- nnoremap <silent><nowait> <Leader>o :<C-u>CocList outline<cr>
-- nnoremap <silent> K :call ShowDocumentation()<CR>
-- 
-- function! ShowDocumentation()
--   if CocAction('hasProvider', 'hover')
--     call CocActionAsync('doHover')
--   else
--     call feedkeys('K', 'in')
--   endif
-- endfunction

