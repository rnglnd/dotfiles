" PLUG
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Syntax and language specific
Plug 'tpope/vim-git'
Plug 'othree/html5.vim'
Plug 'leshill/vim-json'
Plug 'tpope/vim-markdown'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'hail2u/vim-css3-syntax'
" Plug 'flowtype/vim-flow', { 'for': 'javascript' }
" Plug 'cakebaker/scss-syntax.vim'

" Linting and code styling
Plug 'w0rp/ale'
Plug 'editorconfig/editorconfig-vim'

" Searching
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Navigating
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
augroup nerd_loader
  autocmd!
  autocmd VimEnter * silent! autocmd! FileExplorer
  autocmd BufEnter,BufNew *
        \  if isdirectory(expand('<amatch>'))
        \|   call plug#load('nerdtree')
        \|   execute 'autocmd! nerd_loader'
        \| endif
augroup END

" Theme
Plug 'haishanh/night-owl.vim'

call plug#end()

" THEME
syntax enable
set background=dark
colorscheme night-owl

" GVIM FONT
if has("gui_running")
  set guifont=Fira\ Code:h12
endif

" TABS
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
