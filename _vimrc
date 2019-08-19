" General

set t_Co=256            " set terminal to use 256 colors
set background=light    " use light background for color scheme
colorscheme PaperColor  " set color theme

set number relativenumber   " show hybrid line numbers

syntax enable           " enable syntax processing

set incsearch           " search as characters are entered
set ignorecase          " ignore case in search
set smartcase           " ... except if a capital letter is included
set hlsearch            " highlight search matches

set showmatch           " highlight matching [{()}]

set expandtab           " convert tabs to spaces
set shiftwidth=3        " indent size
set softtabstop=3       " indent size

set autochdir           " update cwd based on current buffer so :e uses relative path

set autoread            " reload files that have changed on disk

set hidden               " allow background of buffers without saving (for scratch files)

set undodir=~/.vim/undo  " directory for undo files
set undofile             " enable persistent undo

set scrolloff=5          " always have at least 5 lines visible above/below cursor

set wildmenu                    " show Tab completion options above the command line
set wildmode=list:longest,full  " only Tab complete to longest common string

" Keep search results centered in the screen
nnoremap n nzz
nnoremap N Nzz
" Keep jump results centered in the screen
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz


set t_BE=			" Prevent copy/paste problems after exiting vim
set backspace=indent,eol,start	" Fixes issues with delete/backspace


" Custom Key Bindings

inoremap jk <esc>


" Plugins

call plug#begin('~/.vim/plugged')  " directory for plugins

Plug '907th/vim-auto-save'
let g:auto_save = 1  " enable AutoSave on Vim startup

call plug#end()
