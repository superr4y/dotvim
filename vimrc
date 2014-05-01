execute pathogen#infect()

let mapleader = " " " space is <Leader>-Key

set number
syntax on
set smartindent
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab
set enc=utf-8
set hlsearch
set incsearch
set wildmenu
set nocompatible      " We're running Vim, not Vi!
"set spell spelllang=de,en
"set spell!

"set background=dark
colorscheme darkblue
filetype off          " Enable filetype detection

filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

"autocmd FileT/ype python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType python map <F5> :w<CR>:!python "%"<CR>
autocmd FileType perl map <F5> :w<CR>:!perl "%"<CR>
autocmd FileType ruby map <F5> :w<CR>:!ruby "%"<CR>
autocmd FileType tex map <F5> :w<CR>:!pdflatex %<CR>
autocmd FileType c map <F5> :w<CR>:!gcc % -o %.bin;./%.bin<CR>
"autocmd FileType tex map <F5> :w<CR>:!pdflatex "%"<CR>

" follow function
map <c-f> <c-]> 

" write file
map <Leader>w <Esc>:w<CR>

" copy and past
map <Leader>c "+y
map <Leader>v "+p

" Hexview
map <Leader>x <Esc>:%!xxd<Cr>
map <Leader>X <Esc>:%!xxd -r<Cr>


"" Plugins
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()
"
"" let Vundle manage Vundle, required
"Plugin 'gmarik/vundle'
"
"Bundle 'https://github.com/kien/ctrlp.vim'
"Bundle 'https://github.com/scrooloose/nerdtree.git'
"Bundle 'https://github.com/Valloric/YouCompleteMe'
""Bundle 'https://github.com/davidhalter/jedi-vim'
""Bundle 'surround'
""Bundle 'endwise'
""Bundle 'https://github.com/altercation/vim-colors-solarized.git'

