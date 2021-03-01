call plug#begin()
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'rust-lang/rust.vim'
call plug#end()

" Indentation rules
set autoindent
set expandtab
set shiftround
set shiftwidth=4
set smarttab
set tabstop=4
filetype plugin indent on

" text rendering
set encoding=utf-8
set linebreak
syntax enable
set wrap

" User Interface
set ruler
set number
set mouse=a
set background=dark

" Miscellaneous
set backspace=indent,eol,start
set dir=~/.cache/vim
set history=1000
set noswapfile
set wildignore+=.pyc,.swp
set clipboard=unnamed
set splitright
set splitbelow

" Key mappings
imap jj <ESC>
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


"NerdTree Configs
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


"YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g   :YcmCompleter GoToDefinitionElseDeclaration<CR>
