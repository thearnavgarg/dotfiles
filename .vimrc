set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree.git'
Plugin 'valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:.
set list
set number
map <C-n> :NERDTreeToggle<CR>
imap j <ESC>
let g:tmux_navigator_no_mappings = 1

autocmd FileType * set tabstop=2 | set shiftwidth=2 | set expandtab

nnoremap <silent> {Left-Mapping} :TmuxNavigateLeft<cr>
nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>
