call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kien/ctrlp.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'sheerun/vim-polyglot'
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'

call plug#end()

let g:ycm_path_to_python_interpreter="/usr/bin/python"

set backspace=indent,eol,start
set number
set showcmd
set showmode
set gcr=a:blinkon0
set autoread
set hidden
syntax on
set cursorline
set mouse=a
set title
set laststatus=2
set shell=/bin/zsh
set clipboard=unnamed
set updatetime=750
set noswapfile
set nobackup
set nowb
set nowrap
set linebreak
set incsearch
set hlsearch
set ignorecase
set smartcase
set autoindent
set expandtab
set shiftround
set shiftwidth=2
set smarttab
set tabstop=2
set splitbelow
set splitright
set autochdir
set wrap
set nolist
set textwidth=0
set wrapmargin=0
set formatoptions+=l
setlocal spell
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

inoremap jj <ESC>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap p p=`]<C-o>
nnoremap p p=`]<C-o>

filetype plugin on
filetype indent on

let NERDTreeChDirMode=2
nnoremap <leader>n :NERDTree .<CR>
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
map <C-n> :NERDTreeToggle<CR>

let mapleader = ','
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links' }
let g:ctrlp_working_path_mode = 'ra'

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:vimtex_view_method = "skim"
let g:vimtex_view_general_viewer
    \ = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-r @line @pdf @tex'

let g:vimtex_compiler_callback_hooks = ['UpdateSkim']
function! UpdateSkim(status)
  if !a:status | return | endif

  let l:out = b:vimtex.out()
  let l:tex = expand('%:p')
  let l:cmd = [g:vimtex_view_general_viewer, '-r']
  if !empty(system('pgrep Skim'))
  call extend(l:cmd, ['-g'])
  endif
  if has('nvim')
  call jobstart(l:cmd + [line('.'), l:out, l:tex])
  elseif has('job')
  call job_start(l:cmd + [line('.'), l:out, l:tex])
  else
  call system(join(l:cmd + [line('.'), shellescape(l:out), shellescape(l:tex)], ' '))
  endif
endfunction

let g:tex_flavor = "latex"
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_quickfix_mode = 2
if has('nvim')
    let g:vimtex_compiler_progname = 'nvr'
endif

let g:tex_conceal = ""
let g:vimtex_quickfix_latexlog = {
            \ 'default' : 1,
            \ 'fix_paths' : 0,
            \ 'general' : 1,
            \ 'references' : 1,
            \ 'overfull' : 1,
            \ 'underfull' : 1,
            \ 'font' : 1,
            \ 'packages' : {
            \   'default' : 1,
            \   'natbib' : 1,
            \   'biblatex' : 1,
            \   'babel' : 1,
            \   'hyperref' : 1,
            \   'scrreprt' : 1,
            \   'fixltx2e' : 1,
            \   'titlesec' : 1,
            \ },
            \}
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
