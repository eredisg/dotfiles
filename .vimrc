" ===== General Settings =====
set number

" ===== Vundle Settings =====
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'micha/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ervandew/supertab'

call vundle#end()
filetype plugin indent on

" ===== Vim Powerline-Status Settings =====
set rtp+=/home/eredisg/.local/lib/python2.7/site-packages/powerline/bindings/vim
set laststatus=2
set t_Co=256

" ===== NerdTree Settings =====
map <C-n> :NERDTreeToggle<CR>
set encoding=UTF-8
