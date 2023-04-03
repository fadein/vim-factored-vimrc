" Command Trim trims trailing whitespace from every line in a file
if ! has('user_commands') && has('eval') 
    finish
endif

function! <SID>TrimF()
    let l:save_view = winsaveview()
    %substitute/\s\+$//e
    call winrestview(l:save_view)
endfunction

command! -nargs=0 Trim   :call <SID>TrimF()

" vim:filetype=vim sw=4 foldmethod=marker tw=78 expandtab:
