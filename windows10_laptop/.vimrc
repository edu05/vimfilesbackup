call plug#begin('~/.vim/plugged')
"Plug 'tpope/vim-surround'
"Plug 'tpope/vim-classpath'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'vim-scripts/AutoComplPop'
"Plug 'puremourning/vimspector'
Plug 'dense-analysis/ale'
call plug#end()

" ALE PLUGIN
" Shorten error/warning flags
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
" I have some custom icons for errors and warnings but feel free to change them.
let g:ale_sign_error = '💀'
let g:ale_sign_warning = '⚠'  

" Disable or enable loclist at the bottom of vim 
" Comes down to personal preferance.
let g:ale_open_list = 0
let g:ale_loclist = 0
let g:ale_java_javac_classpath='/c/Program Files/Java/jdk1.8.0_65/bin'
let g:ale_java_javac_executable='/c/Program Files/Java/jdk1.8.0_65/bin/javac'


" Setup compilers for languages
let g:ale_linters = {
      \  'cs':['syntax', 'semantic', 'issues'],
      \  'python': ['pylint'],
      \  'java': ['javac']
      \ }

"END OF ALE PLUGIN



set number
set ruler
set visualbell
syntax on
set hls
set wildmenu
set wildmode=full
set backspace=indent,eol,start
set guifont=Liberation_Mono:h10:cANSI:qDRAFT
syntax enable
colorscheme darcula
set cursorline

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

packadd! matchit
