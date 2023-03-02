if has('autocmd')
    augroup RE_SOURCE_ON_WRITE
        autocmd! BufWritePost 00-settings.vim source <afile>
    augroup END
endif

if exists("+autochdir")
    set noautochdir
endif

if has('folding')
    set foldmethod=indent
endif

"I never use a white terminal
if !has('gui_running')
    set background=dark
endif

"sort this block with the following command:
" .,/endsettings/-1sort /^"\?set\s\(no\)\?/
set autoindent
set autowrite "writes file before I :make it
set backspace=indent,eol,start "lets you use backspace on previously inserted words
set nobackup
set nocindent
set comments=s1:/*,mbx:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:- " is this right?
set nocompatible
set cpoptions=BadFAces
set cscopequickfix=s-,c-,d-,i-,t-,e-
set cscopetag
set cursorline
set directory^=~/.vim/swp//
set expandtab
set nofoldenable
set formatoptions=tcqron
set grepformat=%f:%l:%m
set grepprg=grep\ -HnEi
set hidden
set history=200
set hlsearch
set ignorecase
set incsearch
set isfname-==
set keymodel=startsel,stopsel
set laststatus=2 "make sure status line always appears, regardless of splits
set linebreak
set matchpairs=(:),{:},[:],<:>
set matchtime=3
set modeline  "activate modelines
set mouse=
set nrformats=hex
set number
set ruler
set scrolloff=0
set shiftwidth=4
set shortmess=aoOTt
set showcmd
set smartcase
set nosmartindent
set spellfile=$HOME/.vim/spell/local.en.add
set spellsuggest=best,5
set splitbelow
set splitright
set nostartofline
set statusline=%m%f%a\ %y%r%w\ %=%l/%L\ %P
set switchbuf=useopen
set tabstop=4
set tags=tags
set undodir=$HOME/.vim/undo
set undofile
set viminfo='100,<50,s10,h,n~/.vim/viminfo
set virtualedit=block
set whichwrap=b,s,<,>,[,]
set nowildmenu
set wildmode=list:longest,full
set wrap
"endsettings

"settings to fix dreaded un-indenting of lines beginning with # 
set autoindent
inoremap # X#
"set commentstring="#%s"

if has('syntax')
    syntax enable
    highlight Folded      term=standout ctermfg=12 ctermbg=None
    highlight CursorLine term=underline cterm=underline ctermfg=11
endif

if has('eval')
    filetype plugin indent on
endif

" vim:filetype=vim sw=4 foldmethod=marker tw=78 expandtab:
