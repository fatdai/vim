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

Plugin 'vim-scripts/AutoComplPop'
"Plugin 'Shougo/neocomplete.vim'
Plugin 'vim-scripts/Syntastic'
"Plugin 'vim-scripts/SuperTab'

" a.vim
"Plugin 'vim-scripts/a.vim'   "不可

"多行注释
Plugin 'vim-scripts/The-NERD-Commenter'

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
set fileencoding=utf8
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

" 自动补全( [ { " '
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i

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

""""""""""""""""""""""""""""""""""""""""""
"SuperTab
""""""""""""""""""""""""""""""""""""""""""
"let g:SuperTabDefaultCompletionType = "<c-x><c-u>"  "默认为<C-p>


