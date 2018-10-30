" Toggle visble color columns in a buffor on and off with ,c
" Remove all color columns with ,r
"
" Erik Falor
" Tue Oct 30 08:56:20 MDT 2018

let s:columns = {}

function! DictToCommaList(d)
    let l:str = ""
    for k in keys(a:d)
        let l:str .= ',' . k
    endfor
    return strpart(l:str, 1)
endfunction

function! CursorColumn()
    let l:c = virtcol('.')
    echo l:c
    if has_key(s:columns, l:c)
        call remove(s:columns, l:c)
    else
        let s:columns[l:c] = 1
    endif

    if !empty(s:columns)
        let l:j = DictToCommaList(s:columns)
        let &l:colorcolumn = l:j
    else
        let &l:colorcolumn = ''
    endif
endfunction

function! ResetCursorColumns()
    let &l:colorcolumn = ''
    let s:columns = {}
endfunction

map ,c :call CursorColumn()<CR>
map ,r :call ResetCursorColumns()<CR>
