
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugin 'VundleVim/Vundle.vim'

Plugin 'fatih/vim-go'
"Plugin 'dgryski/vim-godef'

call vundle#end()
"source ~/.vim/plugin/ycm.vim

" 打开插件
filetype plugin indent on

"-- NERD_commenter Setting--
let mapleader=","

"-- 设置折叠 --
set foldmethod=indent "set default foldmethod"

"-- airline setting --
let g:airline_theme='bubblegum'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#whitespace#enabled = 0

map <F1> :!cd /home/aut/yxs/THKServer && retags .<CR><CR> :TlistUpdate<CR>
imap <F1> <ESC>:!cd /home/aut/yxs/THKServer && retags .<CR><CR> :TlistUpdate<CR>
map <F2> :!cd /home/aut/yxs/GameJoyo && retags .<CR><CR> :TlistUpdate<CR>
imap <F2> <ESC>:!cd /home/aut/yxs/GameJoyo && retags .<CR><CR> :TlistUpdate<CR>
map <F3> :!cd /home/aut/yxs/GameSoCommon && retags .<CR><CR> :TlistUpdate<CR>
imap <F3> <ESC>:!cd /home/aut/yxs/GameSoCommon && retags .<CR><CR> :TlistUpdate<CR>

map <F5> :w <CR> :!go run "%" <CR>       
imap <F5> <ESC> :w <CR> :!go run "%" <CR>

set tags=./.tags
set tags+=/home/aut/yxs/GameJoyo/.tags
set tags+=/home/aut/yxs/GameSoCommon/.tags
set tags+=/home/aut/yxs/THKServer/.tags

"-- Map Setting --
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
noremap <C-w> <C-w>w
noremap <F10> :run macros/gdb_mappings.vim <CR><CR> <F8><CR>

" 预防手误                                                                      
cnoremap Q! q!
cnoremap Q1 q!
command  Q  qall
command  Wq wq
command  WQ wq
command  W  w
command  T %retab!

let g:go_version_warning = 0
