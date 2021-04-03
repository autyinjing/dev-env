"如何引用此文件
"source $FILE_PATH

"基础设置
"让 VIM 工作在不兼容模式下,去掉讨厌的有关vi一致性模式，
set nocp
set nocompatible
"显示行号
set nu
"打开语法高亮
syntax on
"打开 VIM 的状态栏标尺
set ru 
"突出显示当前行
set cursorline
"显示标尺
set ruler
"自动切换当前目录为当前文件所在的目录
set autochdir
"设置背景为黑色
set background=dark  
"打开文件回到上次编辑的位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
"显示90字符提示线
"set colorcolumn=81

"搜索
"搜索时高亮显示被找到的文本
set hls
"搜索时在未完全输入完毕要检索的文本时就开始检索
set is
"搜索时忽略大小写
"set ignorecase
" 基于语义的代码导航 may be not useful
"自动显示匹配列表
set cst
" 正向遍历同名标签
nmap <Leader>tn :tnext<CR>
" 反向遍历同名标签
nmap <Leader>tp :tprevious<CR>

"显示括号配对情况
set sm
"高亮显示匹配的括号  
set showmatch
"指定在选择文本时，光标所在位置也属于被选中的范围
set selection=inclusive 
"将补全内容使用一个漂亮的单行菜单形式显示出来
set wildmenu 
"日志高亮
autocmd BufRead [0-9t]* setf logtalk

"允许折叠
set foldenable
"手动折叠
set foldmethod=manual

"终端
"共享剪贴板
set clipboard+=unnamed
"设置终端支持256色
set term=xterm-256color
"总是显示状态栏
set laststatus=2
"命令行显示输入的命令
set showcmd 
"命令行显示vim当前模式
set showmode        
"设定命令行的行数为 1
set cmdheight=1

"缩进
"设置自动缩进
set autoindent
"智能的选择对齐方式
set smartindent

" tab相关
set tabstop=4 		"tab为4个空格
set shiftwidth=4 	"每一级缩进的空格数量
set smarttab 	    "根据文件中其他地方缩进的空格数量确定一个tab是多少个空格
set expandtab 		"将tab扩展成空格，对应相反的选项是noexpandtab

"设定 C/C++ 风格自动缩进的选项
set cindent
set cino=:0g0t0(sus

"编码设置
set encoding=utf8
set termencoding=utf-8
set fileencodings=ucs-bom,utf-8,gb2312,gbk,gb18030,big5,euc-jp,euc-kr,latin1

"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn 

"设置鼠标可用
"set mouse=a

"其他
"防止特殊符号无法显示
set ambiwidth=double 
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
"从不备份
set nobackup
"禁止生成临时文件
set noswapfile
"不在单词中间断行
set lbr 
"打开断行模块对亚洲语言支持
set fo+=mB
"不使用 selectmode
set selectmode= 
"不使用“Shift + 方向键”选择文本
set keymodel=
"粘贴时不自动对齐
set pastetoggle=<F2>
"设置启用光标行和光标列
set cursorline cursorcolumn 

" 颜色和主题
let g:solarized_termcolors=256  
set background=dark  
colorscheme molokai

