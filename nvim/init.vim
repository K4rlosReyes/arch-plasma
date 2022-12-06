set termguicolors
set relativenumber
set cursorline
set splitbelow splitright
set title
set mouse=a

filetype plugin indent on
syntax on

colorscheme onedark
let g:airline_theme='onedark'

call plug#begin()
   Plug 'vim-airline/vim-airline'
   Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
