set nocompatible                        " ward off unexpected default settings

colorscheme desert                      " set color scheme

filetype indent plugin on               " determine the type of a file based on its name
syntax enable                           " enable syntax highlighting
runtime macros/matchit.vim              " load the matchit plugin.

set hidden                              " switch from an unsaved buffer without saving it first

set title                               " set terminals title

set ignorecase
set smartcase

set backspace=indent,eol,start          " allow backspacing over autoindent, line breaks and start of insert action
set autoindent                          " enable automatic indentation
set tabstop=2                           " number of visual spaces per tab
set softtabstop=2                       " number of spaces in tab when editing
set expandtab                           " tabs are spaces

set wrap
set scrolloff=3                         " show 3 lines of context around the cursor

set number                              " show line numbers
set showcmd                             " show command in bottom bar
set showmode                            " display the mode you're in
set wildmenu                            " visual autocomplete for command menu
set wildmode=longest,list
set showmatch                           " highlight matching ()

set incsearch                           " search as characters are entered
set hlsearch                            " highlight matches

set ruler                               " display the cursor position in the stat line of a window
set laststatus=2                        " always display the status line
set confirm                             " dialogue asking if you wish to save changed files

set visualbell                          " visual bell instead of beeping
set t_vb=                               " reset the terminal code for the visual bell

set mouse=a                             " enable use of the mouse for all modes

set notimeout ttimeout ttimeoutlen=200  " quickly time out on keycodes, but never time out on mappings

set nobackup                            " don't make a backup before overwriting a file
set nowritebackup                       " and again
set directory=$HOME/.vim/tmp//,.        " keep swap files in one location
