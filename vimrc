set nocompatible               " be iMproved
filetype off                   " required!
 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
 
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
 
" My Bundles here:
"
" original repos on github
Bundle 'mileszs/ack.vim'
Bundle 'mattn/calendar-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-surround'
Bundle 'altercation/vim-colors-solarized'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-repeat'
Bundle 'pangloss/vim-javascript'
Bundle 'Lokaltog/vim-powerline'
Bundle 'mattn/emmet-vim'
Bundle 'honza/vim-snippets'
Bundle 'Raimondi/delimitMate'
" Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Yggdroot/indentLine'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'Shougo/neocomplete.vim'
Bundle 'SirVer/ultisnips'
Bundle 'rking/ag.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'sjl/gundo.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'nono/jquery.vim'
"
" vim-scripts repos
Bundle 'taglist.vim'
Bundle 'nginx.vim'
Bundle 'matchit.zip'
Bundle 'grep.vim'
Bundle 'tetris.vim'
" ...
 
filetype plugin indent on     " required!
"
" Brief help  
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

"gvim字体
set guifont=Yahei\ Mono\ 13  
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
"开启自动缩进
set smartindent
"高亮显示匹配的括号
set showmatch             
"当文件在外部被修改，自动更新该文件
set autoread                              
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
set guitablabel=%M\ %t
"motions/disable-arrowkeys.vim
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
map <Tab> >>
map <S-Tab> <<
" eggcache vim
command W w
command WQ wq
command Wq wq
command Q q
command Qa qa
command QA q


"javascript
set regexpengine=1
"au FileType javascript call JavaScriptFold()

" php.vim syntax
let php_show_semicolon_error = 1
let php_sql_query = 1
" php.vim indenting
let g:PHP_default_indenting = 1    
"let g:PHP_autoformatcomment = 0

"NERDTree
map <F2> :NERDTreeToggle<CR>

"delimitMate
inoremap <c-]> <C-R>=delimitMate#JumpMany()<CR>
let delimitMate_matchpairs = "(:),[:],{:}"
au FileType html let b:delimitMate_matchpairs = "(:),[:],{:},<:>"

" NeoComplcache
let g:neocomplete#enable_at_startup = 1

" tetris.vim
"nmap <Leader>te :cal <SID>Main()<CR>

" NERD_commenter
let g:NERDSpaceDelims=1
imap <C-c> <plug>NERDCommenterInsert

"emmet
let g:user_emmet_expandabbr_key='<C-e>'
let g:user_emmet_mode='i'

"Powerline
set laststatus=2
let g:Powerline_symbols = 'compatible'

" solarized
set t_Co=256
let g:solarized_italic=0    "default value is 1
let g:solarized_termcolors=256    "default value is 16
syntax enable
set background=dark
colorscheme solarized

" Ultisnips
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsEditSplit="vertical"
" vim-snippts
let g:snips_author='Xiejie <xiejie2104@gmail.com>'


"ctags
set tags=./tags,./../tags,./../../tags,./../../../tags,./../../../../tags,./*/tags,./*/*/tags,./*/*/*/tags,./*/*/*/tags,./*/*/*/*/tags
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
nnoremap <silent> <F8> :TlistToggle<CR>

"multi-cursor Default mapping  
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" indet-guides
let g:indent_guides_guide_size            = 1
let g:indent_guides_start_level           = 2
let g:indent_guides_enable_on_vim_startup = 0

" grep
let Grep_Default_Options = '-i'
