set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'bling/vim-airline' 

call vundle#end()
filetype plugin on

"Syntax highlighting:
syntax on

"Line numbers:
set number

"Tabs:
set expandtab
set shiftwidth=2
set tabstop=2

"Make backspace work like normal:
set backspace=2

"Save left pinky:
imap jk <Esc>
imap kj <Esc>

"Make moving up and down less ridiculous:
nmap j gj
nmap k gk

"Indentation helpers:
set autoindent
set smartindent

"Ignore case for search except when we type an uppercase:
set ignorecase
set smartcase

"Airline tab line:
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2
set ttimeoutlen=50
set linespace=0

"Pretty colors: 
colorscheme jellybeans

"Get back to previous file quickly:
nmap <C-e> :e#<CR>

"Run make easily:
nmap <C-b> :!make<CR>

"Move to last edited line when file is opened:
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

"Remap center command:
nmap <space> zz

"Add newline without entering insert mode:
nmap <CR> o<Esc>

"Remap search next/previous to centered version:
nmap n nzz
nmap N Nzz

"Remap ; to :
nmap ; :

"Remap ;s to :%s/
nmap ;s :%s/

"Latex file flavor for new tex files:
let g:tex_flavor = "latex"

"Insert templates:
function! InsertTemplate(str)
  execute "r ~/.vim/templates/" . a:str . "." . &filetype
endfunction
command! -nargs=1 InsertTemplate call InsertTemplate(<f-args>)

