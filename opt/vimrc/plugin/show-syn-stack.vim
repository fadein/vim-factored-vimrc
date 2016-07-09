" Erik's vimrc file

function! ShowSynStack()
	for id in synstack(line('.'), col('.'))
		echo synIDattr(id, "name")
	endfor
endfunction

map <F1> :call ShowSynStack()<CR>

" vim:filetype=vim sw=4 foldmethod=marker tw=78 expandtab:
