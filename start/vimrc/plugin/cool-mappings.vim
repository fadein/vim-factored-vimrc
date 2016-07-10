"" " execute the current line of text as a shell command
noremap  Q !!$SHELL<CR>

" date

" fortune philosoraptor

" echo "this is my actual password" | figlet | base64 | base64 -d

"" " execute the current selection as shell commands
vnoremap Q  !$SHELL<CR>

" {
" echo True story: | figlet -f small -c
" 	cat <<-: | WIDTH=30 pms quote 
" 		You have nothing to fear but fear itself.
" 		-- Theodore Rooseveldt, Esq.
" 		:
" } | pms centerBlock

" <leader>: begins command mode with the '[,'] range, á là {Visual}:
noremap  <leader>: :'[,']
cnoremap <leader>:  '[,']

"" Make a non-paragraph change bounded by '[ and ']
" ls /dev/*

" Command-line mode mapping for alt-v
" Replace the command-line with the text beneath the cursor in the buffer
" :help c_CTRL-\_e
cnoremap <Esc>q <C-\>esubstitute(getline('.'), '^\s*\(' . escape(substitute(&commentstring, '%s.*$', '', ''), '*') . '\)*\s*:*' , '', '')<CR>
cnoremap <Esc>v <C-\>esubstitute(getline('.'), '^\s*\(' . escape(substitute(&commentstring, '%s.*$', '', ''), '*') . '\)*\s*:*' , '', '')<CR>

" Use <C-L> to clear search highlighting and redraw the screen
noremap  <silent> <C-l>      :nohlsearch <bar> redraw!<CR>
inoremap <silent> <C-l> <C-O>:nohlsearch <bar> redraw!<CR>

" vim:filetype=vim sw=4 foldmethod=marker tw=78 noexpandtab:
