execute pathogen#infect()
Helptags

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
set omnifunc=syntaxcomplete#Complete
set laststatus=2
set guifont="Monospace 12"

" set modeline

set background=dark
colorscheme solarized
filetype on           " Enable filetype detection

filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

"autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4


augroup filetypes
    autocmd!
    autocmd FileType python nnoremap <F5> :w<CR>:!python2 "%"<CR>
    autocmd FileType perl nnoremap <F5> :w<CR>:!perl "%"<CR>
    autocmd FileType ruby nnoremap <F5> :w<CR>:!ruby "%"<CR>
    autocmd FileType tex nnoremap <F5> :w<CR>:!pdflatex "%"<CR>
    autocmd FileType c nnoremap <F5> :w<CR>:!gcc "%" -o "%".bin;./"%".bin<CR>
    autocmd FileType sh nnoremap <F5> :w<CR>:!zsh "%"<CR>
    autocmd FileType javascript nnoremap <F5> :w<CR>:!js17 "%"<CR>
augroup END

" follow function
nnoremap <Leader>f <c-]> 

" write file
nnoremap <Leader>w <Esc>:w<CR>

" copy and past
vnoremap <Leader>c "+y
nnoremap <Leader>v "+p

" Hexview
nnoremap <Leader>x <Esc>:%!xxd<Cr>
nnoremap <Leader>X <Esc>:%!xxd -r<Cr>

" Don't have to type <shift>:
nnoremap ; :
" nnoremap : <nop>

" Upper Case
nnoremap <Leader>u <esc>viwUi

" Easy vimrc edit
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Surround word with ' or "  
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

" Move begin and end of the line
nnoremap H 0
nnoremap L g_

" Fast Normal Mode
inoremap jk <esc>
inoremap jj <esc>
inoremap kk <esc>
inoremap kj <esc>
inoremap jjk <esc>
inoremap kkj <esc>
"viwUi

" Easy vimrc edit
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Surround word with ' or "  
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

" Move begin and end of the
"inoremap <esc> <nop>

" Switch buffers
nnoremap <Right> :bnext<CR>
nnoremap <Left> :bprev<CR>



" Plugins 
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


" bufferline in statusline and not in command bar
let g:bufferline_echo = 0
autocmd VimEnter *
  \ let &statusline='%{bufferline#refresh_status()}'
    \ .bufferline#get_status_string()

