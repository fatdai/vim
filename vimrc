set nocompatible     "required
filetype off         "required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle mamage Vundle,required
Plugin 'gmarik/Vundle.vim'

"Color schemes
"Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'

Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/The-NERD-tree'
Plugin 'vim-scripts/taglist.vim'
"Plugin 'vim-scripts/OmniCppComplete'   "用clang-complete 代替
Plugin 'vim-scripts/AutoComplPop'
Plugin 'vim-scripts/AutoClose'
Plugin 'vim-scripts/minibufexpl.vim'
Plugin 'vim-scripts/clang-complete'
Plugin 'vim-scripts/Syntastic'
Plugin 'vim-scripts/headerGatesAdd.vim'


"All of your Plugins must be add before the following line
call vundle#end()    "required
filetype plugin indent on   "required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim 基本配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=a  "使用鼠标
set shiftwidth=4 "使用>> <<时,宽度为4
set tabstop=4    "tab宽度为4
set softtabstop=4   "设置成4
set history=500   "历史记录
set backspace=indent,eol,start  "允许backspace删除
set confirm         "处理未保存或只读文件时,弹出确认
set ruler
set laststatus=2

set hlsearch incsearch    "高亮搜索和增量搜索
set ignorecase            "搜索时忽略大小写

syntax enable             "语法高亮
syntax on                 "关键字高亮
set number                "显示行号
set cursorline cursorcolumn     "显示当前行和列
set showmode              "显示vim当前模式
set showcmd               "显示当前的命令
set autoindent smartindent  "自动缩进 智能缩进
set cindent               "C样式缩进

set autoread    
set autowrite
set clipboard+=unnamed

set nowritebackup
set nobackup


let mapleader=","     "配置mapleader
let g:mapleader=","   "全局leader
           
"buffer相关操作
nnoremap <silent> [b :bprevious<CR>  "前一个buffer
nnoremap <silent> ]b :bnext<CR>      "后一个buffer

" 要求vim打开
vnoremap <leader>y "+y  "将选中文本复制到系统剪贴板
nmap <leader>p "+p      "将系统剪贴板内容粘贴到vim

set hidden  "允许Ctrl+] 跳转的时候,buffer不必保存

map <silent> <leader>ss :source ~/.vimrc<CR> "重新加载~/.vimrc
map <silent> <leader>ee :e ~/.vimrc<CR>      "快速编辑
autocmd! bufwritepost .vimrc source ~/.vimrc "当.vimrc保存时,重新加载


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"F2打开/关闭NERDTree窗口
nnoremap <F2>   :NERDTreeToggle<CR>
let NERDTreeWinSize=30

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Taglist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"F3打开/关闭 Taglist 窗口
nnoremap <F3>   :TlistToggle<CR>
let Tlist_Show_One_File=1  "只显示当前文件的tags
let Tlist_WinWidth=30      "设置tagList的宽度
let Tlist_Exit_OnlyWindow=1 "taglist窗口是最后一个窗口时退出
let Tlist_Use_Right_Window=1 "在右边显示

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OmniCppComplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"设置tags的位置
"set tags+=~/.vim/cpp
"build recursively a ctags database from the current directory
"map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"let OmniCpp_DisplayMode=1   "显示类里面所有成员
"let OmniCpp_NamespaceSearch = 1
"let OmniCpp_GlobalScopeSearch = 1
"let OmniCpp_ShowAccess = 1 
"let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表 
"let OmniCpp_MayCompleteDot = 1   " 输入 .  后自动补全
"let OmniCpp_MayCompleteArrow = 1 " 输入 -> 后自动补全 
"let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全 
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
"" 自动关闭补全窗口 
"au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif 
"set completeopt=menuone,menu,longest

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" minibufexpl
" """""""""""""""""""""""""""""""""""""""""""""""""""""
"<C-TAB> <C-S-TAB>切换buffer
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplMapWindowNavVim=1  "Ctrl+hjkl切换窗口
let g:miniBufExplMapWindowNavArrows=1  "Ctrl+箭头切换窗口
let g:miniBufExplUseSingleClick=1      "单击鼠标切换窗口
