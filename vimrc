set nocompatible              " be iMproved, required
filetype off                  
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
if !isdirectory($HOME.'/.vim/bundle/Vundle.vim')
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim
endif
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'mileszs/ack.vim'
Plugin 'mattn/calendar-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-repeat'
Plugin 'pangloss/vim-javascript'
Plugin 'Lokaltog/vim-powerline'
Plugin 'mattn/emmet-vim'
Plugin 'honza/vim-snippets'
Plugin 'Raimondi/delimitMate'
Plugin 'Yggdroot/indentLine'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'Shougo/neocomplete.vim'
Plugin 'SirVer/ultisnips'
Plugin 'tomtom/tcomment_vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'sjl/gundo.vim'
Plugin 'vcscommand.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'nono/jquery.vim'
Plugin 'taglist.vim'
Plugin 'nginx.vim'
Plugin 'matchit.zip'
Plugin 'grep.vim'
Plugin 'tetris.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gbk,cp936,gb2312,big5,euc-jp,euc-kr,latin1
let &termencoding = &encoding
set termencoding=utf-8

"" Tabs. May be overriten by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
autocmd BufNewFile,BufRead *.html,*.htm,*.css,*.js set noexpandtab tabstop=2 shiftwidth=2 

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Directories for swp files
set nobackup
set noswapfile

" windos behave
if has ('win32')
    source $VIMRUNTIME/gvimrc_example.vim
    source $VIMRUNTIME/mswin.vim
    behave mswin
endif

"" Gui
if has ('win32')
    set guifont=Yahei\ Mono:h12:cGB2312 
    language messages en
else
    set guifont=Yahei\ Mono\ 11
endif
set langmenu=none
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set guioptions=egmlt
set guitablabel=%M\ %t
set number
set cmdheight=1
set showmatch             
set autoread                              
set ruler
set cursorline
set backspace=indent,eol,start
set foldmethod=marker
"set virtualedit=all                                            
set virtualedit=block                                            

if &term=="win32"
    set columns=80
endif

" solarized colorscheme
let g:solarized_italic=0    
set t_Co=256
let g:solarized_termcolors=256    
set background=dark
colorscheme solarized

"" Map leader 
let mapleader='/'
noremap <Up>    <Nop>
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<cr>
map <C-h> <c-w>h
map <C-j> <c-w>j
map <C-k> <c-w>k
map <C-l> <c-w>l
map <Tab> >>
map <S-Tab> <<
vmap <Tab> >>
vmap <S-Tab> <<
" eggcache vim
command! W w
command! WQ wq
command! Wq wq
command! Q q
command! Qa qa
command! QA qa

" php.vim syntax
let php_show_semicolon_error = 1
let php_sql_query = 1
" php.vim indenting
let g:PHP_default_indenting = 1    
"let g:PHP_autoformatcomment = 0

"NERDTree
map <F2> :NERDTreeToggle<CR>
let NERDTreeChDirMode=2

"delimitMate
inoremap <c-]> <C-R>=delimitMate#JumpMany()<CR>
let delimitMate_matchpairs = "(:),[:],{:}"

" NeoComplcache
let g:neocomplete#enable_at_startup = 0

" tetris.vim
nmap <Leader>te :cal <SID>Main()<CR>

" source vimrc
map <silent> <Leader>so :source ~/.vimrc<cr>

" tcomment
map <Leader>c<space> :TComment<cr>

"emmet
let g:user_emmet_expandabbr_key='<C-e>'
let g:user_emmet_mode='i'

" vcscommand
let b:VCSCommandVCSType='SVN'

"Powerline
set laststatus=2
let g:Powerline_symbols = 'compatible'

" Ultisnips
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsEditSplit="vertical"
" vim-snippts
let g:snips_author='Xiejie <xiejie2104@gmail.com>'

"ctags
set tags=/www/tags
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
nnoremap <silent> <F8> :TlistToggle<CR>
nnoremap <silent> <F3> :!ctags --languages=php -R /www<CR><CR>

"multi-cursor Default mapping  
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" indentLine
let g:indentLine_char='┆'
let g:indentLine_color_term = 239 
let g:indentLine_fileType = ['c', 'cpp', 'php', 'js', 'sh', 'py']

"     ./configure --with-features=huge --disable-gui --enable-rubyinterp --enable-pythoninterp --enable-perlinterp --enable-cscope --enable-luainterp --enable-perlinterp --enable-tclinterp --enable-multibyte --enable-xim --prefix=/usr
" make VIMRCLOC=/etc VIMRUNTIMEDIR=/usr/share/vim MAKE="make -e"
