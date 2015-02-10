set nocompatible    "required
filetype off        "required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" minibufexpl
Plugin 'vim-scripts/minibufexpl.vim'

" Pydiction python补全插件
Plugin 'vim-scripts/Pydiction'

" SnipMate
Plugin 'vim-scripts/snipMate'

" 显示缩进
"Plugin 'vim-scripts/Indent-Guides'
Plugin 'Yggdroot/indentLine'

" youcompleteme
"Plugin  'Valloric/YouCompleteMe'   "真心不好用，而且还麻烦 
"Plugin 'vim-scripts/clang-complete'
Plugin 'vim-scripts/AutoComplPop'
"Plugin 'Shougo/neocomplete.vim'
Plugin 'vim-scripts/Syntastic'
"Plugin 'vim-scripts/SuperTab'

" a.vim
"Plugin 'vim-scripts/a.vim'   "不可

" autoclose
"Plugin 'vim-scripts/AutoClose'

"多行注释
Plugin 'vim-scripts/The-NERD-Commenter'

" headerGatesAdd
"Plugin 'vim-scripts/headerGatesAdd.vim'

Plugin 'molokai' 



"All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " requiredcall vundle

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
"""" end of vundle



"""""""""""""""""""""""
"基本配置
"""""""""""""""""""""""
" macbookpro下没 backspace,使用delete删除
fixdel

syntax enable
syntax on         "语法高亮,关键字高亮

" 解决有时乱码问题
set fileencoding=gb18030
set fileencodings=utf-8,gb18030,utf-16,big5

"设置当前文件路径为vim的路径
set autochdir

set number        "显示行号
set mouse=a       "使用鼠标

" 使用>> << 时的宽度为4
set shiftwidth=4

" tab的宽度设置成4
set tabstop=4  

" backspace可以直接删除4个空格
set softtabstop=4
set expandtab

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

"对齐相关
set autoindent
set smartindent
set cindent

" 命令行显示输入的命令
set showcmd
" 命令行显示vim当前模式
set showmode

set cursorline

set history=500

"禁止生成备份和临时文件
set nobackup
set noswapfile

"当文件被改动时自动载入
set autoread

"自动保存
set autowrite

"启用折叠,手动折叠
set foldenable
set foldmethod=manual

"去掉错误时的声音
set noeb

"高亮搜索
set hlsearch incsearch

"搜索时大小写不敏感
set ignorecase

"在处理未保存或只读文件的时候，弹出确认"
set confirm

"显示状态栏
set ruler
set laststatus=2

"设置字体
set guifont=Monaco:h14

"Set mapleader
let mapleader=","

"Fast reloading of the .vimrc
map <silent> <leader>ss :source ~/.vimrc<CR>
""Fast editing of .vimrc
map <silent> <leader>ee :e ~/.vimrc<CR>
"When .vimrc is edited,reload it
autocmd! bufwritepost .vimrc source ~/.vimrc"

" buffer 相关操作
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>

"将选中文本块复制到系统剪贴板
vnoremap <leader>y "+y

"将系统剪贴板内容粘贴到vim
nmap <leader>p "+p"


""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme
""""""""""""""""""""""""""""""""""""""""""""""
colorscheme darkblue

"""""""""""""""""""""""""""""""""""""""""""""""
" minibufexpl
" """""""""""""""""""""""""""""""""""""""""""""
let g:miniBufExplUseSingleClick=1   " 单击切换 
let g:miniBufExplMapWindowNavVim=1  "使用 ctrl+hjkl切换窗口
let g:miniBufExplMapWindowNavArrows=1   "使用 ctrl+方向箭切换窗口


""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
""""""""""""""""""""""""""""""""""""""""""""""
" :SyntasticInfo 查看相关信息
" :SyntasticToggleMode 开关
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""""""""""""""""""""""""""""""""""""""""""""""
" Pydiction 
""""""""""""""""""""""""""""""""""""""""""""""
"TAB 显示提示
"<Space>              -- Accept current match and insert a space.
"CTRL-Y               -- Accept current match and and don't insert a space.
"<Enter>              -- Accept current match and insert a newline.
"<ESC> or CTRL-E      -- Close the menu and do not accept any match.
 
let g:pydiction_location = '/Users/dai/.vim/bundle/Pydiction/complete-dict'

"""""""""""""""""""""""""""""""""""""""""""""""
" neocomplete
"""""""""""""""""""""""""""""""""""""""""""""""
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
"" Disable AutoComplPop.
"let g:acp_enableAtStartup = 0
" Use neocomplete.
"let g:neocomplete#enable_at_startup = 1
" Use smartcase.
"let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
"let g:neocomplete#sources#syntax#min_keyword_length = 3
"let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
"let g:neocomplete#sources#dictionary#dictionaries = {
"    \ 'default' : '',
"    \ 'vimshell' : $HOME.'/.vimshell_hist',
"    \ 'scheme' : $HOME.'/.gosh_completions'
"        \ }

" Define keyword.
"if !exists('g:neocomplete#keyword_patterns')
"    let g:neocomplete#keyword_patterns = {}
"endif
"let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
"inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
"  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
"endfunction
" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y>  neocomplete#close_popup()
"inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
"if !exists('g:neocomplete#sources#omni#input_patterns')
"  let g:neocomplete#sources#omni#input_patterns = {}
"endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
"let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'


""""""""""""""""""""""""""""""""""""""""""
"SuperTab
""""""""""""""""""""""""""""""""""""""""""
"let g:SuperTabDefaultCompletionType = "<c-x><c-u>"  "默认为<C-p>

""""""""""""""""""""""""""""""""""""""""""
" clang_complete
" """"""""""""""""""""""""""""""""""""""""
"let g:clang_complete_copen=1
"let g:clang_periodic_quickfix=1
"let g:clang_snippets=1
"let g:clang_close_preview=1


""""""""""""""""""""""""""""""""""""""""""
" syntastic
" """"""""""""""""""""""""""""""""""""""""
"let g:syntastic_check_on_open=1
"let g:syntastic_enable_signs=1
"let g:syntastic_cpp_include_dirs = ['/usr/include/c++/4.2.1', '/usr/local/Cellar/sdl2/2.0.3/include/SDL2','/System/Library/Frameworks/OpenGL.framework/Versions/A/Headers','/System/Library/Frameworks/GLUT.framework/Versions/A/Headers']
"let g:syntastic_cpp_check_header=1
"let g:syntastic_cpp_remove_include_errors=1

" C++的编译和运行
"map <F5> :call CompileRunGpp()<CR>
"func! CompileRunGpp()
"  exec "w"
"  exec "!g++ -Wall -g % -o %<"
"  exec "! ./%<"
"endfunc

