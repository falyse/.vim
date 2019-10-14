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
set nowrapscan          " don't wrap search back to the beginning of the file

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

set directory^=$HOME/.vim/swap//  " Prevent swap files from being placed in current dir

set t_BE=			" Prevent copy/paste problems after exiting vim
set backspace=indent,eol,start	" Fixes issues with delete/backspace


" Custom Key Bindings

" Easier exit from insert mode
inoremap jk <esc>

" Set leader to space
nnoremap <SPACE> <Nop>
let mapleader=" "

" Make basic movements work better with wrapped lines
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k

" Basic movements in insert mode
"inoremap <C-k> <C-o>gk
"inoremap <C-h> <Left>
"inoremap <C-l> <Right>
"inoremap <C-j> <C-o>gj
"
" Make Y yank till end of line
nnoremap Y y$

" Keep search results centered in the screen
nnoremap n nzz
nnoremap N Nzz
" Keep jump results centered in the screen
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz

" Clear last search pattern register by hitting return
nnoremap <CR> :nohlsearch<CR>


" Plugins
"  Reload .vimrc and :PlugInstall to install new plugins
"  :PlugUpdate and :PlugClean to manage existing plugins

call plug#begin('~/.vim/plugged')  " directory for plugins

" Auto save files
Plug '907th/vim-auto-save'
let g:auto_save = 1  " enable AutoSave on Vim startup

" Enable repeat on plugins 
Plug 'tpope/vim-repeat'

" Mappings to edit surroundings (parens, brackets, quotes, etc)
Plug 'tpope/vim-surround'

" Markdown extensions
"Plug 'godlygeek/tabular'
"Plug 'plasticboy/vim-markdown'

" SystemVerilog
Plug 'vhda/verilog_systemverilog.vim'
"set foldmethod=syntax
runtime macros/matchit.vim  " allow % to jump between begin/end pairs

" Log file syntax highlighting
Plug 'falyse/vim-log-highlighting'

call plug#end()

