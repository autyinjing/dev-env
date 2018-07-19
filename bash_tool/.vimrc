
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'

Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

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

"-- Ctags Setting --
"map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q -f .tags .<CR><CR> :TlistUpdate<CR>
"imap <F5> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q  -f .tags .<CR><CR> :TlistUpdate<CR>

map <F5> :!cd /home/aut/yxs/THKServer && retags .<CR><CR> :TlistUpdate<CR>
imap <F5> <ESC>:!cd /home/aut/yxs/THKServer && retags .<CR><CR> :TlistUpdate<CR>
map <F6> :!cd /home/aut/yxs/GameJoyo && retags .<CR><CR> :TlistUpdate<CR>
imap <F6> <ESC>:!cd /home/aut/yxs/GameJoyo && retags .<CR><CR> :TlistUpdate<CR>
map <F7> :!cd /home/aut/yxs/GameSoCommon && retags .<CR><CR> :TlistUpdate<CR>
imap <F7> <ESC>:!cd /home/aut/yxs/GameSoCommon && retags .<CR><CR> :TlistUpdate<CR>

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
