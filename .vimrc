call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'eslint/eslint'
Plug 'preservim/nerdtree'

call plug#end()

:set relativenumber
:colorscheme gruvbox
:set background=dark

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
