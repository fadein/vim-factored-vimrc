if ! has('eval')
    finish
endif

" all of this stuff can go under the respective plugin's pack

let g:obviousModeInsertHi = 'gui=reverse'
let g:loaded_lustyjuggler = 1
let g:ZO_syntaxhighlight = 1
let g:ZO_sleepdelay = '50m'

let g:showfuncctagsbin='/usr/bin/exuberant-ctags'
let g:showfunc_width_pct=45
let g:errormarker_errorgroup = "Error"
let g:errormarker_warninggroup = "Todo"

"git branch info
let g:git_branch_status_nogit=""

let NERDShutUp = 1

" vim:filetype=vim sw=4 foldmethod=marker tw=78 expandtab:
