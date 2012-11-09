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
syntax on
" let g:molokai_original = 1
if &t_Co > 2 || has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif
set cursorline      " 高亮当前行
set showcmd
"color desert
color molokai

"格式设置
set autoindent
set smartindent

set tabstop=4
set shiftwidth=4
set expandtab
set showmatch

"设置文件浏览器目录为当前目录
set autochdir

" 光标移动到buffer的顶部和底部时，保持3行距离
set scrolloff=3

set nobackup
"搜索忽略大小写
set ignorecase

"搜索逐字符高亮
set hls!
set incsearch

"编码设置
set enc=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"set guifont=Bitstream\ Vera\ Sans\ Mono\ 13.
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" 设置文件格式
set ffs=unix,dos ff=unix

"解决菜单乱码
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

" 设置ctags
set tags=tags;

"快捷键设置
nnoremap <C-S> :w<Enter>
vnoremap <C-C> "+y
map <F10> :NERDTreeToggle .<CR>

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

"NeoComlCache配置
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_disable_auto_complete = 1

" Plugin key-mappings. 
imap <C-k>     <Plug>(neocomplcache_snippets_expand) 
smap <C-k>     <Plug>(neocomplcache_snippets_expand) 
inoremap <expr><C-g>     neocomplcache#undo_completion() 
inoremap <expr><C-l>     neocomplcache#complete_common_string() 
" AutoComplPop like behavior. 
"let g:neocomplcache_enable_auto_select = 1 
" Enable omni completion. 
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS 
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags 
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS 
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete 
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags 

"SuperTab
"let g:SuperTabDefaultCompletionType = '<C-X><C-U>'

"NERD Tree config
let g:NERDTreeShowBookmark=1

" activate pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
" 在打开文件的时候检查
let g:syntastic_check_on_open=1
"phpcs，tab4个空格，编码参考使用CodeIgniter风格
let g:syntastic_phpcs_conf = "--tab-width=4 --standard=CodeIgniter"

if has('windows')
    source $VIMRUNTIME/mswin.vim
    behave mswin
    " autoload _vimrc
    autocmd! bufwritepost _vimrc source %
else
    " autoload .vimrc
    autocmd! bufwritepost .vimrc source %
endif
