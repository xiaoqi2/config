set number
set backspace=2    "ɾ������ֵ
syntax on          "�﷨���
set autoindent     "�Զ�����
set smartindent
set tabstop=4      "tab������ֵ
set hlsearch       "�����������
set autoread       "�ļ��Ķ����Զ���ȡ
colorscheme desert "����������ɫ
set shortmess=atI  "����ʱ����ʾ�ڸɴ���ʾ
set foldenable     "�����۵�
set foldmethod=manual  "�ֶ��۵�
set completeopt=preview,menu "���벹ȫ
set guifont=SimHei:h14
set clipboard+=unnamed  "����ճ����
set autochdir           "����ǰ�ļ�Ŀ¼����Ϊ����Ŀ¼
set history=1000        "������ʷ��¼

"set fdm=indent          "���������������ߵ��۵�
set foldmethod=indent          "�����۵�
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
 


" ���п�ִ���ļ�
func RunCodeTest()
 exec "w"
 if &filetype == "c" || &filetype == "cpp" || &filetype == "haskell"
 exec "! %<.exe"
 elseif &filetype == "python"
 exec "!python %<.py"
 endif
 endfunc

" Ctrl + C һ�����桢����
"map <c-c> :call CompileCodeTest()<CR>
"imap <c-c> <ESC>:call CompileCodeTest()<CR>
"vmap <c-c> <ESC>:call CompileCodeTest()<CR>

" Ctrl + R һ�����桢����
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








