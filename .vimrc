set number
" 载入文件类型插件
filetype on
filetype plugin on

" 为特定文件类型载入相关缩进文件
filetype indent on
set history=1000

"---------------------------------------------------------------------------
" colors 
"---------------------------------------------------------------------------
set background=dark " use a dark background 
" let g:molokai_original = 1
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
  set t_Co=256
endif
color molokai

"格式设置
set autoindent
set smartindent

set tabstop=4
set shiftwidth=4
set showmatch

"设置文件浏览器目录为当前目录
set autochdir

set nobackup
"搜索忽略大小写
set ignorecase

"搜索逐字符高亮
set hls!
set incsearch

"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set guifont=Inconsolata\ 12

"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"解决consle输出乱码
language messages zh_CN.utf-8

" 在编辑过程中，在右下角显示光标位置的状态行
set ruler


" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=key

" 启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI

" 自动启动 NERDTree
"
"快捷键设置
map <C-S> :w<Enter>
map <F10> :NERDTreeToggle /home/lfyzjck/www 


"NeoComlCache配置
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_disable_auto_complete=1

" Plugin key-mappings. 
"inoremap <expr><C-g>     neocomplcache#undo_completion() 
"inoremap <expr><C-l>     neocomplcache#complete_common_string() 
" AutoComplPop like behavior. 
"let g:neocomplcache_enable_auto_select = 1 

"SuperTab
"let g:SuperTabDefaultCompletionType = '<C-X><C-U>'

"NERD Tree config
let g:NERDTreeShowBookmark=1

" activate pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
" autoload _vimrc
autocmd! bufwritepost _vimrc source %

