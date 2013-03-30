syntax on
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype

set number
set nocompatible   " Disable vi-compatibility
set t_Co=256
set laststatus=2   " Always show the statusline
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set linespace=2
set history=10000
set showmatch
set incsearch
set hlsearch

call pathogen#infect()

let python_highlight_all=1
"colorscheme blackboard
set guifont=Menlo\ Bold:h14
set tabstop=4
set shiftwidth=4
set softtabstop=4
set numberwidth=5
set showtabline=2
set winwidth=79
set cmdheight=2
set cursorline
set expandtab
set smartindent
set autoindent

"Autocompletion
set wildmode=list:longest

"Python autocomplete
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
let g:pyflakes_use_quickfix = 0

set foldenable
set foldmethod=indent
set foldlevel=99

"Auto change current dir to saved file dir
autocmd BufEnter * cd %:p:h

"Autoupdate vimrc after save
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

"Nerd Tree Toggle Shortcut
nmap ,nt :NERDTreeToggle<cr>

"filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
"let g:Powerline_symbols = 'fancy'

" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF

"256 color converter CSAAprox Plugin
if has("gui_running")  
    colorscheme blackboard  
else  
    colorscheme blackboard
    "Clear Background to Fix Terminal Background Color!
    set t_ut=
endif  
