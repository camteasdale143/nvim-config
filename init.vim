syntax on
set nu
set clipboard=unnamed

set expandtab
set shiftwidth=2
set softtabstop=2
:tnoremap <Esc> <C-\><C-n>
set autoindent
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }"
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'mhinz/vim-startify'
Plug 'zchee/deoplete-jedi'
Plug 'scrooloose/nerdtree'
Plug 'gyim/vim-boxdraw'
call plug#end()
filetype plugin indent on
syntax on
colorscheme nord
let g:deoplete#enable_at_startup = 1
map <C-n> :NERDTreeToggle<CR>
map <C-s> :w<CR>

fun! SetupCommandAlias(from, to)
  exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfun

call SetupCommandAlias("W","w")
call SetupCommandAlias("Q","q")


let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }




