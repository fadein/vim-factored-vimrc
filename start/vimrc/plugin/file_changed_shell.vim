if ! has('eval') || ! has('autocmd')
    finish
endif

augroup FCSHandler
    au FileChangedShell * call FCSHandler(expand("<afile>:p"))
augroup END

function! FCSHandler(name)
    let msg = 'File "'.a:name.'"'
    let v:fcs_choice = ''
    if v:fcs_reason == 'deleted'
        let msg .= " no longer available - 'modified' set"
        call setbufvar(expand(a:name), '&modified', '1')
    elseif v:fcs_reason == 'time'
        let msg .= ' timestamp changed'
    elseif v:fcs_reason == 'mode'
        let msg .= ' permissions changed'
    elseif v:fcs_reason == 'changed'
        let msg .= ' contents changed'
        let v:fcs_choice = 'ask'
    elseif v:fcs_reason == 'conflict'
        let msg .= ' CONFLICT --'
        let msg .= ' is modified, but'
        let msg .= ' was changed outside Vim'
        let v:fcs_choice = 'ask'
        echohl Error
    else  " unknown values (future Vim versions?)
        let msg .= ' FileChangedShell reason='
        let msg .= v:fcs_reason
        let v:fcs_choice = 'ask'
    endif
    redraw!
    echomsg msg
    echohl None
endfunction

" vim:filetype=vim sw=4 foldmethod=marker tw=78 expandtab:
