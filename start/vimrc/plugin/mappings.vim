"" " execute the current line of text as a shell command
noremap  Q !!$SHELL<CR>

"" 
"" " execute the current selection as shell commands
vnoremap Q  !$SHELL<CR>

" <leader>: begins command mode with the '[,'] range, á là {Visual}:
noremap  <leader>: :'[,']
cnoremap <leader>:  '[,']

" Command-line mode mapping for alt-v
" Replace the command-line with the text beneath the cursor in the buffer
" :help c_CTRL-\_e
cnoremap <Esc>v <C-\>esubstitute(getline('.'), '^\s*\(' . escape(substitute(&commentstring, '%s.*$', '', ''), '*') . '\)*\s*:*' , '', '')<CR>

" Use <C-L> to clear search highlighting and redraw the screen
noremap  <silent> <C-l>      :nohlsearch <bar> redraw!<CR>
inoremap <silent> <C-l> <C-O>:nohlsearch <bar> redraw!<CR>

"emulate eclipse and VS build hotkey
noremap  <F4>      :sign unplace *<CR> <bar> :ccl<CR>
inoremap <F4> <C-O>:sign unplace *<CR>
noremap  <F5>      :make<CR>
inoremap <F5> <C-O>:make<CR>

" vim:filetype=vim sw=4 foldmethod=marker tw=78 expandtab:
