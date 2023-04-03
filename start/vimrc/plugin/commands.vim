if ! has('user_commands')
    finish
endif

command! DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis 
            \ | wincmd p | diffthis
command! -nargs=1 -complete=help Help      :help <args>
command! -nargs=1 -complete=help HElp      :help <args>
command! -nargs=* -bar -bang Ls            :ls<bang>
command! -nargs=0 Noh       :noh
command! -nargs=0 Date      :put ='* ' . strftime('%b %d, %Y %I:%M %p')
command! -nargs=? -bar Underline    :put =repeat( len('<args>') > 0 ? '<args>' : '=', len(getline('.')))
command! -nargs=0 Max       :let [s:lines, s:columns] = [&lines, &columns] | set lines=999 columns=999
command! -nargs=0 Taller    :let [s:lines, s:columns] = [&lines, &columns] |set lines=999
command! -nargs=0 Wider     :let [s:lines, s:columns] = [&lines, &columns] |set columns=999
command! -nargs=0 Restore   :let [s:lines, s:columns, &lines, &columns] = [&lines, &columns, s:lines, s:columns]
command! -nargs=0 Merge     /^\(<\|=\|>\)\{7}\ze\(\s\|$\)/

" vim:filetype=vim sw=4 foldmethod=marker tw=78 expandtab:
