if ! has('autocmd')
    finish
endif

autocmd BufRead *.xsl,*.xslt,*.xml,*.htm,*.html,*.xsd,*.tas set filetype=xml
autocmd FileType {xml,xslt} setlocal iskeyword=$,@,-,\:,48-57,_,128-167,224-235 
autocmd FileType {xml,xslt} setlocal noexpandtab

" vim:filetype=vim sw=4 foldmethod=marker tw=78 expandtab:
