"           YouCompleteMe配置                        *
"*******************************************************************
"配置默认的ycm_extra_conf.py
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_confirm_extra_conf=0
"不使用ctags生成的tags文件
let g:ycm_collect_identifiers_from_tags_files = 0
"开启语义补全
let g:ycm_seed_identifiers_with_syntax = 1
"重新查询omnicompletion引擎
let g:ycm_cache_omnifunc=0
"在注释中也可以补全
let g:ycm_complete_in_comments=1
let g:ycm_complete_in_strings = 1

"哪些Vim文件类型(见:h filetype)应该打开YCM
let g:ycm_filetype_whitelist = { '*': 1  }
"YCM的诊断显示功能
"let g:ycm_show_diagnostics_ui = 1
let g:ycm_show_diagnostics_ui = 0
"YCM会把图标放在Vim的阴影线上
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting= 0

"---Syntastic配置----- 
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_open = 0
"补全路径
let g:syntastic_cpp_include_dirs = ['/usr/include/', '/usr/local/include/', '/usr/include/c++/4.9.2/', '/usr/include/linux', '/usr/include/c++/4.8.5/x86_64-redhat-linux/','/usr/local/include/google/','/usr/local/include/google/protobuf/','/usr/local/include/gtest/','~/include', ]
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
"set error or warning signs
let g:syntastic_error_symbol = 'x'
let g:syntastic_warning_symbol = '!'
"whether to show balloons
let g:syntastic_enable_balloons = 1

"补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
"如果显示子窗口 
"在顶部的窗口显示候选者,可以显示完整函数原型和所有函数重载 默认:0
"let g:ycm_add_preview_to_completeopt = 1
""在用户接受提供的完成字符串后自动关闭窗口
"let g:ycm_autoclose_preview_window_after_completion = 1
""在用户离开插入模式后自动关闭窗口
"let g:ycm_autoclose_preview_window_after_insertion = 1
"
"跳转 按gb 会跳转到定义
"默认 CTRL-I to jump forward ,CTRL-O to jump back
"nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>
""nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
"nnoremap <leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR>

"nnoremap <C-p> :YcmCompleter GoToDeclaration<CR>
"nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
"nnoremap <C-]> :YcmCompleter GoToDefinitionElseDeclaration<CR>
