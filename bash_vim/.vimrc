"让 VIM 工作在不兼容模式下
set nocp
"打开 VIM 的状态栏标尺
set ru 
"打开语法高亮
syntax on
"搜索时高亮显示被找到的文本
set hls
"搜索时在未完全输入完毕要检索的文本时就开始检索
set is
"显示行号
set nu
"设定命令行的行数为 1
set cmdheight=1
"防止特殊符号无法显示
set ambiwidth=double 
"智能的选择对齐方式
set smartindent
"设置自动缩进
set autoindent
"用制表符表示一个缩进
set noexpandtab
"自动切换当前目录为当前文件所在的目录
set autochdir              
"设置魔术
set magic
"关闭错误信息响铃
set noerrorbells         
"关闭使用可视响铃代替呼叫
set novisualbell        
"置空错误铃声的终端代码"
set t_vb=                 
"不设定在插入状态无法用退格键和 Delete 键删除回车符
set backspace=indent,eol,start
"设定命令行的行数为 1
set cmdheight=1
"显示标尺
set ruler
"允许折叠
set foldenable
"手动折叠
set foldmethod=manual
"从不备份
set nobackup
"共享剪贴板
set clipboard+=unnamed
"禁止生成临时文件
set noswapfile
"搜索时忽略大小写
set ignorecase
"编码设置
set fileencodings=ucs-bom,utf-8,gb2312,gbk,gb18030,big5,euc-jp,euc-kr,latin1
set encoding=utf8
set termencoding=utf-8
set enc=utf-8
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
"总是显示状态栏
set laststatus=2
"自动缩进的时候，缩进尺寸为4个空格
set sw=4 
"Tab 宽度为4个字符
set ts=4
"编辑时将所有Tab替换为空格
set et
"按一下 Backspace 就删除4个空格
set smarttab
"不在单词中间断行
set lbr 
"打开断行模块对亚洲语言支持
set fo+=mB
"显示括号配对情况
set sm
"打开 C/C++ 风格的自动缩进
set cin
"设定 C/C++ 风格自动缩进的选项
set cino=:0g0t0(sus
"打开普通文件类型的自动缩进
set ai
"不使用 selectmode
set selectmode= 
"不使用“Shift + 方向键”选择文本
set keymodel=
"指定在选择文本时，光标所在位置也属于被选中的范围
set selection=inclusive 
"将补全内容使用一个漂亮的单行菜单形式显示出来
set wildmenu 
"高亮显示匹配的括号  
set showmatch
"设置终端支持256色
set term=xterm-256color
"命令行显示输入的命令
set showcmd 
"命令行显示vim当前模式
set showmode        
"粘贴时不自动对齐
set pastetoggle=<F2>
"突出显示当前行
set cursorline
"打开插件
filetype plugin indent on
"打开文件回到上次编辑的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
"日志高亮
autocmd BufRead [0-9t]* setf logtalk

"-- Map Setting --
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
noremap <C-w> <C-w>w
noremap <F6> :run macros/gdb_mappings.vim <CR><CR> <F7><CR>

"-- 自动插入文件头 --
autocmd BufNewFile *.c,*.cpp,*.cc,*.h,*.hpp,*.sh,*.java exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
    "如果文件类型为.sh文件 
    if &filetype == 'sh' 
        call setline(1,"\#########################################################################") 
        call append(line("."),   "\# File Name: ".expand("%")) 
        call append(line(".")+1, "\# Author: Aut") 
        call append(line(".")+2, "\# mail: aut@taomee.com") 
        call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
        call append(line(".")+4, "\#########################################################################") 
        call append(line(".")+5, "\#!/bin/bash") 
        call append(line(".")+6, "") 
    else 
        call setline(1,          "/* ***********************************************************************") 
        call append(line("."),   "")
        call append(line(".")+1, "  > File Name: ".expand("%")) 
        call append(line(".")+2, "  > Author: Aut") 
        call append(line(".")+3, "  > Mail: aut@taomee.com ") 
        call append(line(".")+4, "  > Created Time: ".strftime("%c")) 
        call append(line(".")+5, "")
        call append(line(".")+6, " ********************************************************************** */") 
        call append(line(".")+7, "")
    endif
    if &filetype == 'cpp' || &filetype == 'cc'
        call append(line(".")+8, "#include <iostream>")
        call append(line(".")+9, "#include <vector>")
        call append(line(".")+10, "#include <string>")
        call append(line(".")+11, "")
        call append(line(".")+12, "using namespace std;")
        call append(line(".")+13, "")
        call append(line(".")+14, "int main(int argc, const char* argv[])")
        call append(line(".")+15, "{"           )
        call append(line(".")+16, ""            )
        call append(line(".")+17, "    return 0;")
        call append(line(".")+18, "}")
        call append(line(".")+19, "")
    endif
    if &filetype == 'c'
        call append(line(".")+8, "#include <stdio.h>")
        call append(line(".")+9, "")
        call append(line(".")+10, "int main(int argc, const char* argv[])")
        call append(line(".")+11, "{"           )
        call append(line(".")+12, ""            )
        call append(line(".")+13, "    return 0;")
        call append(line(".")+14, "}")
        call append(line(".")+15, "")
    endif
    "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
endfunc 

"-- Ctags Setting --
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
imap <F5> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>

set tags=tags
set tags+=./tags
set tags+=../tags
set tags+=/usr/include/tags
set tags+=/usr/include/c++/tags
"自动显示匹配列表
set cst

set autochdir

"-- airline setting --
let g:airline_theme='bubblegum'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#whitespace#enabled = 0

"-- NERD_commenter Setting--
let mapleader=","

let g:solarized_termcolors=256  
set background=dark  
colorscheme ir_black

" 预防手误                                                                      
cnoremap Q! q!
cnoremap Q1 q!
command  Q  q
command  Wq wq
command  WQ wq
command  W  w

