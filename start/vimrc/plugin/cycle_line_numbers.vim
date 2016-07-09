" Cycle between line numbers, relative numbers, no numbers
if ! exists('+relativenumber')
    finish
endif

let g:loaded_RltvNmbrPlugin='skip'

"CTRL-N is traditionally mapped to move the cursor down;
"I never use it that way, and there are already four other
"ways to do that
nnoremap <expr> <C-N> CycleLNum()
xnoremap <expr> <C-N> CycleLNum()
onoremap <expr> <C-N> CycleLNum()

" function to cycle between normal, relative, and no line numbering
func! CycleLNum()
    if &l:rnu
        setlocal nonumber norelativenumber
    elseif &l:nu
        setlocal number relativenumber
    else
        setlocal number
    endif
    " sometimes (like in op-pending mode) the redraw doesn't happen
    " automatically
    redraw
    " do nothing, even in op-pending mode
    return ""
endfunc

" vim:filetype=vim sw=4 foldmethod=marker tw=78 expandtab:
