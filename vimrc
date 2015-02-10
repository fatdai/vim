set nocompatible    "required
filetype off        "required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" minibufexpl
Plugin 'vim-scripts/minibufexpl.vim'

" Pydiction python��ȫ���
Plugin 'vim-scripts/Pydiction'

" SnipMate
Plugin 'vim-scripts/snipMate'

" ��ʾ����
"Plugin 'vim-scripts/Indent-Guides'
Plugin 'Yggdroot/indentLine'

" youcompleteme
"Plugin  'Valloric/YouCompleteMe'   "���Ĳ����ã����һ��鷳 
"Plugin 'vim-scripts/clang-complete'
Plugin 'vim-scripts/AutoComplPop'
"Plugin 'Shougo/neocomplete.vim'
Plugin 'vim-scripts/Syntastic'
"Plugin 'vim-scripts/SuperTab'

" a.vim
"Plugin 'vim-scripts/a.vim'   "����

" autoclose
"Plugin 'vim-scripts/AutoClose'

"����ע��
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
"��������
"""""""""""""""""""""""
" macbookpro��û backspace,ʹ��deleteɾ��
fixdel

syntax enable
syntax on         "�﷨����,�ؼ��ָ���

" �����ʱ��������
set fileencoding=gb18030
set fileencodings=utf-8,gb18030,utf-16,big5

"���õ�ǰ�ļ�·��Ϊvim��·��
set autochdir

set number        "��ʾ�к�
set mouse=a       "ʹ�����

" ʹ��>> << ʱ�Ŀ��Ϊ4
set shiftwidth=4

" tab�Ŀ�����ó�4
set tabstop=4  

" backspace����ֱ��ɾ��4���ո�
set softtabstop=4
set expandtab

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

"�������
set autoindent
set smartindent
set cindent

" ��������ʾ���������
set showcmd
" ��������ʾvim��ǰģʽ
set showmode

set cursorline

set history=500

"��ֹ���ɱ��ݺ���ʱ�ļ�
set nobackup
set noswapfile

"���ļ����Ķ�ʱ�Զ�����
set autoread

"�Զ�����
set autowrite

"�����۵�,�ֶ��۵�
set foldenable
set foldmethod=manual

"ȥ������ʱ������
set noeb

"��������
set hlsearch incsearch

"����ʱ��Сд������
set ignorecase

"�ڴ���δ�����ֻ���ļ���ʱ�򣬵���ȷ��"
set confirm

"��ʾ״̬��
set ruler
set laststatus=2

"��������
set guifont=Monaco:h14

"Set mapleader
let mapleader=","

"Fast reloading of the .vimrc
map <silent> <leader>ss :source ~/.vimrc<CR>
""Fast editing of .vimrc
map <silent> <leader>ee :e ~/.vimrc<CR>
"When .vimrc is edited,reload it
autocmd! bufwritepost .vimrc source ~/.vimrc"

" buffer ��ز���
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>

"��ѡ���ı��鸴�Ƶ�ϵͳ������
vnoremap <leader>y "+y

"��ϵͳ����������ճ����vim
nmap <leader>p "+p"


""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme
""""""""""""""""""""""""""""""""""""""""""""""
colorscheme darkblue

"""""""""""""""""""""""""""""""""""""""""""""""
" minibufexpl
" """""""""""""""""""""""""""""""""""""""""""""
let g:miniBufExplUseSingleClick=1   " �����л� 
let g:miniBufExplMapWindowNavVim=1  "ʹ�� ctrl+hjkl�л�����
let g:miniBufExplMapWindowNavArrows=1   "ʹ�� ctrl+������л�����


""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
""""""""""""""""""""""""""""""""""""""""""""""
" :SyntasticInfo �鿴�����Ϣ
" :SyntasticToggleMode ����
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
"TAB ��ʾ��ʾ
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
"let g:SuperTabDefaultCompletionType = "<c-x><c-u>"  "Ĭ��Ϊ<C-p>

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

" C++�ı��������
"map <F5> :call CompileRunGpp()<CR>
"func! CompileRunGpp()
"  exec "w"
"  exec "!g++ -Wall -g % -o %<"
"  exec "! ./%<"
"endfunc

