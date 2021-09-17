set number
set backspace=2    "删除任意值
syntax on          "语法检查
set autoindent     "自动缩排
set smartindent
set tabstop=4      "tab的缩进值
set hlsearch       "搜索结果高亮
set autoread       "文件改动，自动读取
colorscheme desert "设置主题颜色
set shortmess=atI  "启动时不显示乌干达提示
set foldenable     "允许折叠
set foldmethod=manual  "手动折叠
set completeopt=preview,menu "代码补全
set guifont=SimHei:h14
set clipboard+=unnamed  "共享粘贴板
set autochdir           "将当前文件目录设置为工作目录
set history=1000        "设置历史记录

"set fdm=indent          "更多的缩进代表更高的折叠
set foldmethod=indent          "代码折叠
set foldlevel=99          

""""""""""""""
"Run
""""""""""""""

func CompileCodeTest()
 exec "w"
 if &filetype == "c"
    exec "!cl %<.c "
 elseif &filetype == "cpp"
    exec "!cl %<.cpp "

elseif &filetype == "python"
   exec "!python %<.py"
endif
 endfunc
 


" 运行可执行文件
func RunCodeTest()
 exec "w"
 if &filetype == "c" || &filetype == "cpp" || &filetype == "haskell"
 exec "! %<.exe"
 elseif &filetype == "python"
 exec "!python %<.py"
 endif
 endfunc

" Ctrl + C 一键保存、编译
"map <c-c> :call CompileCodeTest()<CR>
"imap <c-c> <ESC>:call CompileCodeTest()<CR>
"vmap <c-c> <ESC>:call CompileCodeTest()<CR>

" Ctrl + R 一键保存、运行
"map <c-r> :call RunCodeTest()<CR>
"imap <c-r> <ESC>:call RunCodeTest()<CR>
"vmap <c-r> <ESC>:call RunCodeTest()<CR>


map <F5> : call CompileRunGccTest()<CR>
function CompileRunGccTest()
	exec "w"
	if &filetype =="python"
			exec "!python %<.py"
	endif
endfunction








