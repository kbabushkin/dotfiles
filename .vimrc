" be iMproved
set nocompatible

" required!
filetype off

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Colorschemes
Plug 'flazz/vim-colorschemes'

" Persistent undo
Plug 'mbbill/undotree'

" Parentheses matching
Plug 'junegunn/rainbow_parentheses.vim'

" Initialize plugin system
call plug#end()

" ==========================================================
" Shortcuts
" ==========================================================

" change the leader to be a comma vs slash
let mapleader=","

" for when we forget to use sudo to open/edit a file
cnoremap W! w !sudo tee % >/dev/null

" Reload Vimrc
nnoremap <silent> <leader>V :source ~/.vimrc<cr>:filetype detect<cr>:exe ":echo 'vimrc reloaded'"<cr>

" Open/close the quickfix window
nmap <leader>c :copen<cr>
nmap <leader>cc :cclose<cr>

" ctrl-jklm navigation to splits
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" allow window commands in insert mode too (<c-o> makes next cmd happen as if in command mode )
imap <c-w> <c-o><c-w>

" Next buffer
nmap <c-n> :bn<cr>

" Paste from clipboard
nnoremap <leader>p "+p

" Set working directory
nnoremap <leader>. :lcd %:p:h<cr>

" Quit window on <leader>q
nnoremap <leader>q :q<cr>

" Hide matches on <leader>space
nnoremap <leader><space> :nohlsearch<cr>

" Remove trailing whitespace on <leader>S
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<cr>

" Select the item in the list with enter
inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<c-g>u\<cr>"

" Tag bar
nmap <F8> :TagbarToggle<cr>

" Load the undo window
nmap <F5> :UndotreeToggle<cr>

" Sets a mapping so pressing F2 in normal mode will invert the 'paste' option
nnoremap <F2> :set invpaste paste?<cr>

" ==========================================================
" Basic Settings
" ==========================================================
syntax on                     " syntax highlighing
filetype on                   " try to detect filetypes
filetype plugin indent on     " enable loading indent file for filetype
set number                    " Display line numbers
set title                     " show title in console title bar
set wildmenu                  " Menu completion in command mode on <Tab>
set wildmode=longest,list     " <Tab> to do bash like completion
set t_Co=256                  " Enable 256 colors
set guifont=Monaco:h12
set encoding=utf-8

colorscheme wombat256

" Disable the colorcolumn when switching modes.  Make sure this is the
" first autocmd for the filetype here
"autocmd FileType * setlocal colorcolumn=0

""" Moving Around/Editing
set cursorline              " have a line indicate the cursor location
set ruler                   " show the cursor position all the time
set nostartofline           " Avoid moving cursor to BOL when jumping around
set virtualedit=block       " Let cursor move past the last char in <C-v> mode
set scrolloff=3             " Keep 3 context lines above and below the cursor
set backspace=2             " Allow backspacing over autoindent, EOL, and BOL
set showmatch               " Briefly jump to a paren once it's balanced
set wrap                    " Wrap text
set linebreak               " don't wrap textin the middle of a word
set autoindent              " always set autoindenting on
set pastetoggle=<F2>        " allows to press F2 when in insert mode
set smartindent             " use smart indent if there is no indent file
set tabstop=4               " <tab> inserts 4 spaces
set shiftwidth=4            " but an indent level is 2 spaces wide.
set softtabstop=4           " <BS> over an autoindent deletes both spaces.
set expandtab               " Use spaces, not tabs, for autoindent/tab key.
set shiftround              " rounds indent to a multiple of shiftwidth
set formatoptions=tcroql    " Setting text and comment formatting to auto
set textwidth=100           " Lines are automatically wrapped after 100 columns

"""" Reading/Writing
set autowrite               " Stop complaining about unsaved buffers
set autowriteall            "
set noautoread              " Don't automatically re-read changed files.
set modeline                " Allow vim options to be embedded in files;
set modelines=5             " they must be within the first or last 5 lines.

"""" Messages, Info, Status
set ls=2                    " allways show status line
set vb t_vb=                " Disable all bells. I hate ringing/flashing.
set noerrorbells
set showcmd                 " Show incomplete normal mode commands as I type.
set report=0                " : commands always print changed line count.
set shortmess+=a            " Use [+]/[RO]/[w] for modified/readonly/written.
set ruler                   " Show some info, even without statuslines.
set laststatus=2            " Always show statusline, even if only 1 window.

""" Searching and Patterns
set ignorecase              " Default to using case insensitive searches,
set smartcase               " unless uppercase letters are used in the regex.
set hlsearch                " Highlight searches by default.
set incsearch               " Incrementally search while typing a /regex

""" Persistent undo
set noswapfile
if exists('+undofile')
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=./.vim-undo//
  set undodir+=~/.vim/undo//
  set undofile
endif
