set scrolloff=8
set number
set relativenumber

" for convert tab to spaces
set expandtab

" 4 space for tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4


" smart indent for new lines
set smartindent

call plug#begin('~/.vim/plugged')

" fzf plugin
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" gruv box plugin
Plug 'morhetz/gruvbox'

call plug#end()


" enable gruvbox plugin
autocmd vimenter * ++nested colorscheme gruvbox 
set background=dark

let mapleader = " "
nnoremap <leader>vp :Vex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>

" switch between last two files
nnoremap <leader><leader> <C-^>

nnoremap <C-p> :Files<CR>

" Quick fixlist
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>

" ================================
" in text

vnoremap <leader>p "_dP

" copy yanked to clipboard
vnoremap <leader>y "+y
nnoremap <leader>y "+y

" copy whole file
nnoremap <leader>Y gg"+yG

" cut yanked to clipboard 
vnoremap <leader>c "+c
nnoremap <leader>c "+c

" move highlight to top line or bottom
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv


inoremap jk <Esc>

" end text
" =================================


