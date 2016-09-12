"emulate eclipse and VS build hotkey
noremap  <F4>      :sign unplace *<CR> <bar> :ccl<CR>
inoremap <F4> <C-O>:sign unplace *<CR>
noremap  <F5>      :make<CR>
inoremap <F5> <C-O>:make<CR>

" Widescreen optimization: open tags in a vertical split
nnoremap <C-w>] :execute "vert stag " . expand("<cword>")<CR>

" vim:filetype=vim sw=4 foldmethod=marker tw=78 expandtab:
