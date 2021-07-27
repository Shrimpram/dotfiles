"{{{GENERAL SETTINGS
syntax on

filetype plugin on
filetype indent on

let mapleader = ' '
let maplocalleader = ' '

"{{{DIRECTORIES
set directory^=~/.local/share/vim/swap
set undodir=~/.local/share/vim/undo
"}}}

set autoindent
set backspace=eol,start,indent
set cmdheight=1
set conceallevel=0
set encoding=UTF-8
set expandtab
set foldmethod=marker foldlevel=0
set hidden
set ignorecase smartcase
set incsearch
set iskeyword+=-
set nobackup
set noerrorbells
set nohlsearch
set nomodeline
set number relativenumber
set ruler
set scrolloff=3
set shiftwidth=4
set tabstop=8 softtabstop=4 shiftwidth=4 expandtab
set termguicolors
set timeoutlen=250
set title
set undofile
set wrap
set clipboard+=unnamed,unnamedplus
"}}}

set background=dark
colorscheme desert

"{{{REMAPS
" Basic leader commands to write and write+quit
nnoremap <nowait><silent> <leader>w :w<CR>
nnoremap <nowait><silent> <leader>wq :wq<CR>
nnoremap <nowait><silent> <leader>ww :w<CR>

" Better indenting
" See https://github.com/ChristianChiarulli/nvim/blob/56f65b12a446fe05483a23585dd4e3104205b062/keys/mappings.vim#L13-L14
vnoremap < <gv
vnoremap > >gv

" Make j and k move using visual lines instead of hard lines
nnoremap <expr><silent> j v:count ? 'j' : 'gj'
nnoremap <expr><silent> k v:count ? 'k' : 'gk'
vnoremap <expr><silent> j v:count ? 'j' : 'gj'
vnoremap <expr><silent> k v:count ? 'k' : 'gk'

" Use arrow keys to resize splits
nnoremap <silent> <M-j> :resize +2<CR>
nnoremap <silent> <M-k> :resize -2<CR>
nnoremap <silent> <M-h> :vertical resize -2<CR>
nnoremap <silent> <M-l> :vertical resize +2<CR>

" Shortcutting split navigation, saving a keypress:
noremap <silent> <C-h> <C-w>h
noremap <silent> <C-j> <C-w>j
noremap <silent> <C-k> <C-w>k
noremap <silent> <C-l> <C-w>l

" Quick way to switch between light and dark mode
command! Light set background=light
command! Dark set background=dark
"}}}
