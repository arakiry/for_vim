" Fern reload
"function s:init_fern_mapping_reload_all()
"    nmap <buffer> R <Plug>(fern-action-reload:all)
"endfunction
"augroup my-fern-mapping-reload-all
"    autocmd! *
"    autocmd FileType fern call s:init_fern_mapping_reload_all()
"augroup END


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
