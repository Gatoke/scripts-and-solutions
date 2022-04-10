" Content of VIM configuration file - ~/.vimrc
" Vim-Plug is required: https://github.com/junegunn/vim-plug


" PLUGINS ---------------------------
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf'
call plug#end()
" -----------------------------------


" VISUALS ---------------------------
syntax on
set relativenumber
set termguicolors
set background=dark
colorscheme gruvbox
" -----------------------------------


" FILE EXPLORER ---------------------
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
	autocmd!
	autocmd VimEnter * :Vexplore
augroup END
" -----------------------------------
