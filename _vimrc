"关闭兼容模式
set nocompatible
"模仿快捷键，如:Ctrl+A全选、Ctrl+C复制、Ctrl+V粘贴等等
source $VIMRUNTIME/gvimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
"gvim字体设置
set guifont=Yahei\ Mono:h13.5:cGB2312
"gvim内部编码
set encoding=utf-8
"当前编辑的文件编码
set fileencoding=utf-8
"gvim打开支持编码的文件
set fileencodings=ucs-bom,utf-8,gbk,cp936,gb2312,big5,euc-jp,euc-kr,latin1
"set langmenu=zh_CN
set langmenu=none
"let $LANG = 'zh_CN.UTF-8'
"解决consle输出乱码
language messages zh_CN.utf-8
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"设置终端编码为gvim内部编码encoding
let &termencoding=&encoding
"防止特殊符号无法正常显示
set ambiwidth=double
"缩进尺寸为4个空格
set shiftwidth=4
"tab宽度为4个字符
set tabstop=4
"编辑时将所有tab替换为空格
set expandtab
"按一次backspace就删除4个空格了
set smarttab
"不生成备份文件,如index.html~ 
set nobackup
" wrap
"set nowrap
"不生成交换文件
set noswapfile
"开启行号标记
set number
"命令行屏幕行数
set cmdheight=1
"隐藏菜单栏
"set guioptions-=m
"隐藏上侧工具栏
set guioptions-=T
"隐藏右侧滚动条
set guioptions-=r
"开启自动缩进
set smartindent
"高亮显示匹配的括号
set showmatch             
"当文件在外部被修改，自动更新该文件
set autoread                              
" 开启文件类型侦测
filetype on
filetype plugin on
filetype indent on
" 高亮显示当前行列
set cursorline
"set cursorcolumn
"用空格键来开关折叠
set foldmethod=marker
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
"map 
let mapleader = "/"
"map <F2> <c-w><c-w>
"set virtualedit=all                                            
set virtualedit=block                                            

nnoremap Q gq
"set textwidth=78
set guitablabel=%M\ %t

"motions/disable-arrowkeys.vim
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
map <Tab> >>
map <S-Tab> <<

" eggcache vim
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA q

" plugins下のディレクトリをruntimepathへ追加する。
for s:path in split(glob($VIM.'/plugins/*'), '\n')
  if s:path !~# '\~$' && isdirectory(s:path)
    let &runtimepath = &runtimepath.','.s:path
  end
endfor
unlet s:path

"NERDTree
map <F2> :NERDTreeToggle<CR>

"delimitMate
inoremap <c-]> <C-R>=delimitMate#JumpMany()<CR>
let delimitMate_matchpairs = "(:),[:],{:}"
au FileType html let b:delimitMate_matchpairs = "(:),[:],{:},<:>"

" NeoComplcache
"let g:neocomplete#enable_at_startup = 1
"neocomplete#get_context_filetype()

"javascript
set regexpengine=1
"au FileType javascript call JavaScriptFold()
" php.vim syntax
let php_show_semicolon_error = 1
let php_sql_query = 1
" php.vim indenting
let g:PHP_default_indenting = 1    
"let g:PHP_autoformatcomment = 0

" tetris.vim
"nmap <Leader>te :cal <SID>Main()<CR>

" NERD_commenter
imap <C-c> <plug>NERDCommenterInsert

"emmet
let g:user_emmet_expandabbr_key='<C-e>'
let g:user_emmet_mode='i'

"Powerline
set laststatus=2
let g:Powerline_symbols = 'compatible'

" pathogen
execute pathogen#infect()

" 背景颜色
" solarized
set t_Co=256
let g:solarized_italic=0    "default value is 1
let g:solarized_termcolors=256    "default value is 16
syntax enable
set background=dark
colorscheme solarized

" Ultisnips
let g:UltiSnipsUsePythonVersion = 2
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"
let g:snips_author='Xiejie <xiejie2104@gmail.com>'

"ctags
set tags=./tags,./../tags,./../../tags,./../../../tags,./../../../../tags,./*/tags,./*/*/tags,./*/*/*/tags,./*/*/*/tags,./*/*/*/*/tags
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Ctags_Cmd = 'F:/vim74-kaoriya-win64/ctags.exe'
"nmap  <F4> <Esc>:!ctags -R --recurse=yes *.php<CR>
nmap  <F4> <Esc>:!ctags -R *.php<CR>
nnoremap <silent> <F8> :TlistToggle<CR>

"multi-cursor Default mapping  
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" indet-guides
let g:indent_guides_guide_size            = 1
let g:indent_guides_start_level           = 2
let g:indent_guides_enable_on_vim_startup = 1
"nmap <silent> <Leader>ig <Plug>IndentGuidesToggle

" grep
"let Grep_Path = $vim.'\grep.exe'
"let Grep_Default_Options = '--color=auto'
let Grep_Default_Options = '-i'
