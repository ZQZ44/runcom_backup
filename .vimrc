set number
syntax on
set showmode
set showcmd
set tabstop=2
set autoindent
set shiftwidth=4
set expandtab
set softtabstop=2
set pastetoggle=<F2>
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>O
autocmd FileType python inoremap { {}<ESC>i
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let $PLUG_DIR = expand("$HOME/.vim")
if empty(glob(expand("$PLUG_DIR/plug.vim")))
  silent !curl -fLo $PLUG_DIR/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source ~/.vimrc
endif
source $PLUG_DIR/plug.vim
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
call plug#end()

