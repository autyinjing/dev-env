"如何引入此文件
"source $FILE_PATH

"-- 自动插入文件头 --
autocmd BufNewFile *.c,*.cpp,*.h,*.hpp,*.sh,*.java exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
    "如果文件类型为.sh文件 
    if &filetype == 'sh' 
        call setline(1,"\#########################################################################") 
        call append(line("."),   "\# File Name: ".expand("%")) 
        call append(line(".")+1, "\# Author: Aut") 
        call append(line(".")+2, "\# mail: autyinjing@126.com") 
        call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
        call append(line(".")+4, "\#########################################################################") 
        call append(line(".")+5, "\#!/bin/bash") 
        call append(line(".")+6, "") 
        call append(line(".")+7, "set -e") 
    else 
        call setline(1,          "/* ***********************************************************************") 
        call append(line("."),   "")
        call append(line(".")+1, "  > File Name: ".expand("%")) 
        call append(line(".")+2, "  > Author: Aut") 
        call append(line(".")+3, "  > Mail: autyinjing@126.com ") 
        call append(line(".")+4, "  > Created Time: ".strftime("%c")) 
        call append(line(".")+5, "")
        call append(line(".")+6, " ********************************************************************** */") 
        call append(line(".")+7, "")
    endif
    if &filetype == 'cpp'
        call append(line(".")+8, "#include <iostream>")
        call append(line(".")+9, "")
        call append(line(".")+10, "int main(int argc, const char* argv[])")
        call append(line(".")+11, "{"           )
        call append(line(".")+12, ""            )
        call append(line(".")+13, "    return 0;")
        call append(line(".")+14, "}")
        call append(line(".")+15, "")
    endi
    f
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
