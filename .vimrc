syntax on
set number
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set cindent
set copyindent
set backspace=indent,eol,start
set shiftround
set showmatch
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set visualbell
set noerrorbells
set nobackup
set noswapfile
if &t_Co >= 256 || has("gui_running")
    colorscheme mustang
endif
if &t_Co >= 2 || has("gui_running")
   " switch syntax highlighting on, when the terminal has no colors
    syntax on
endif
"set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:.
"autocmd filetype html,xml set listchars-=tab:>
autocmd BufWritePre *.py %s/\s\+$//e

execute pathogen#infect()
syntax on
filetype plugin indent on
:helptags ~/.vim/bundle
"let g:pymode_python = 'python3'
