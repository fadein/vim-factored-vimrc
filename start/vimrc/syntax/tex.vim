" LaTeX and TeX rules
"  :help ft-tex-syntax


" Don't Want Spell Checking In Comments?
let g:tex_comment_nospell=1

" Want Spell Checking in Verbatim Zones?
let g:tex_verbspell=1

" Finally, if syntax highlighting is still too slow, you may set
" let g:tex_fast=""

" You may decide that some syntax is acceptable; you may use the following table
" selectively to enable just some syntax highlighting: >
"
"     b : allow bold and italic syntax
"     c : allow texComment syntax
"     m : allow texMatcher syntax (ie. {...} and [...])
"     M : allow texMath syntax
"     p : allow parts, chapter, section, etc syntax
"     r : allow texRefZone syntax (nocite, bibliography, label, pageref, eqref)
"     s : allow superscript/subscript regions
"     S : allow texStyle syntax
"     v : allow verbatim syntax
"     V : allow texNewEnv and texNewCmd syntax


syntax spell toplevel

" syntax folding - add ':set foldmethod=syntax' to the modeline
let g:tex_fold_enabled=1


" Tex: Don't Want Spell Checking In Comments?
