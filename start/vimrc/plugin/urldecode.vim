" Handy URL Decoder

function! Urldecode(str)
    let retval = a:str
    let retval = substitute(retval, '+', ' ', 'g')
    let retval = substitute(retval, '%\(\x\x\)', '\=nr2char("0x".submatch(1))', 'g')
    return retval
endfunction

" vim:filetype=vim sw=4 foldmethod=marker tw=78 expandtab:
