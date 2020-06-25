set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'dense-analysis/ale'
Plugin 'tpope/vim-commentary'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'davidhalter/jedi-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'junegunn/fzf.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

filetype on
syntax on

set rtp+=/home/pblouw/.fzf
set encoding=utf-8
set termguicolors     " enable true colors support
colorscheme flatland

let g:airline_theme='murmur'
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts = 1


set colorcolumn=80
set textwidth=79
set bs=2
set ts=4 sts=4 sw=4 expandtab
set ru
set number
highlight NonText guifg=#4a4a59

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
inoremap ii <Esc>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

let g:ale_linters= {'python': ['flake8']}

" Fix tex indentation behavior
let g:tex_indent_items=0
let g:tex_indent_and=0
let g:tex_indent_brace=0
