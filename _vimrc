"�رռ���ģʽ
set nocompatible
"ģ�¿�ݼ�����:Ctrl+Aȫѡ��Ctrl+C���ơ�Ctrl+Vճ���ȵ�
source $VIMRUNTIME/gvimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
"gvim��������
set guifont=Yahei\ Mono:h13.5:cGB2312
"gvim�ڲ�����
set encoding=utf-8
"��ǰ�༭���ļ�����
set fileencoding=utf-8
"gvim��֧�ֱ�����ļ�
set fileencodings=ucs-bom,utf-8,gbk,cp936,gb2312,big5,euc-jp,euc-kr,latin1
"set langmenu=zh_CN
set langmenu=none
"let $LANG = 'zh_CN.UTF-8'
"���consle�������
language messages zh_CN.utf-8
"����˵�����
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"�����ն˱���Ϊgvim�ڲ�����encoding
let &termencoding=&encoding
"��ֹ��������޷�������ʾ
set ambiwidth=double
"�����ߴ�Ϊ4���ո�
set shiftwidth=4
"tab���Ϊ4���ַ�
set tabstop=4
"�༭ʱ������tab�滻Ϊ�ո�
set expandtab
"��һ��backspace��ɾ��4���ո���
set smarttab
"�����ɱ����ļ�,��index.html~ 
set nobackup
" wrap
"set nowrap
"�����ɽ����ļ�
set noswapfile
"�����кű��
set number
"��������Ļ����
set cmdheight=1
"���ز˵���
"set guioptions-=m
"�����ϲ๤����
set guioptions-=T
"�����Ҳ������
set guioptions-=r
"�����Զ�����
set smartindent
"������ʾƥ�������
set showmatch             
"���ļ����ⲿ���޸ģ��Զ����¸��ļ�
set autoread                              
" �����ļ��������
filetype on
filetype plugin on
filetype indent on
" ������ʾ��ǰ����
set cursorline
"set cursorcolumn
"�ÿո���������۵�
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

" plugins�¤Υǥ��쥯�ȥ��runtimepath��׷�Ӥ��롣
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

" ������ɫ
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
