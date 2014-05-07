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
set spell spelllang=de,en
set nospell

"set background=dark
colorscheme darkblue
filetype off          " Enable filetype detection

filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

"autocmd FileT/ype python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType python nnoremap <F5> :w<CR>:!python "%"<CR>
autocmd FileType perl nnoremap <F5> :w<CR>:!perl "%"<CR>
autocmd FileType ruby nnoremap <F5> :w<CR>:!ruby "%"<CR>
autocmd FileType tex nnoremap <F5> :w<CR>:!pdflatex "%"<CR>
autocmd FileType c noremap <F5> :w<CR>:!gcc % -o %.bin;./%.bin<CR>

" follow function
nnoremap <c-f> <c-]> 

" write file
nnoremap <Leader>w <Esc>:w<CR>

" copy and past
nnoremap <Leader>c "+y
nnoremap <Leader>v "+p

" Hexview
nnoremap <Leader>x <Esc>:%!xxd<Cr>
nnoremap <Leader>X <Esc>:%!xxd -r<Cr>

" Don't have to type <shift>:
nnoremap ; :


" Plugins 
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
