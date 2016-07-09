" Erik's vimrc file

if !has('eval')
    finish
endif

function! MakeSession() 
    let l:sess='$HOME\Desktop\new.session.vim'
    let l:msg="Wrote session "
    if v:this_session == eval("$HOME") . "\\_vimrc"
        exe "mksession! " . l:sess
        echomsg l:msg . l:sess
    else
        exe "mksession! " . v:this_session
        echomsg l:msg . v:this_session
    endif
endfunction 

function! Urldecode(str)
    let retval = a:str
    let retval = substitute(retval, '+', ' ', 'g')
    let retval = substitute(retval, '%\(\x\x\)', '\=nr2char("0x".submatch(1))', 'g')
    return retval
endfunction

" vim:filetype=vim sw=4 foldmethod=marker tw=78 expandtab:
