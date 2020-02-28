set nocompatible              "be iMproved, required
filetype off                  "required

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'tpope/vim-commentary'
Plug 'vimjas/vim-python-pep8-indent' 
call plug#end()

"""" Basic Behavior
let mapleader=','

set showmode
"set scrolloff=33                   "move text up a little (offset)
set wrap							"wrap lines
set linebreak
set textwidth=0
set wrapmargin=0
set number relativenumber           "show line numbers
set mouse=a							"enable mouse support
set ruler							"show row and column in statusbar
"set showmatch						"show matching brackets
"set visualbell						"blink instead of audio bell

set autochdir                       "automatically change current directory path

" Turn on the Wild menu (horizontal completion bar)
set wildmenu

"""" Tab Settings

set tabstop=4		                "set tab width
set expandtab		                "convert tab to spaces
set softtabstop=4	                "backspaces after tab will remove this many spaces
set shiftwidth=4	                "indent spaces

set autoindent		                "auto indent
set smartindent		                "insert {[( after indent


"""" Search Settings

set hlsearch		                "highlight search
set incsearch		                "highlight as you type
set ignorecase		                "ignorecase in search
set smartcase                       "case sensitive if text contains uppercase
nnoremap <silent> <leader><space> :nohl<CR>


"""" Key Bindings

nnoremap j gj
nnoremap k gk


""""Space bindings

nnoremap <Space>a ggVG
vnoremap <Space>c "+y
nnoremap <Space>v "+p
nnoremap <Space>s :w<CR>
nnoremap <Space>w :wq<CR>
nnoremap <Space>q :q!<CR>


""""Split Settings

nnoremap <silent> <Space>e :Vexplore .<CR>
nnoremap <Space>j <C-W>p
nnoremap <Space>k <C-W>w


""""Explorer Settings

let g:netrw_browse_split = 0    "open file in new vertical split
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 2
let g:netrw_altv = 1
let g:netrw_winsize = 15
let g:netrw_list_hide = '^\.'
let g:netrw_hide = 1
augroup ProjectDrawer
  autocmd!
  ""autocmd VimEnter * :Vexplore
augroup END



"""" center display after searching
nnoremap n   nzz
nnoremap N   Nzz
nnoremap *   *zz
nnoremap #   #zz
nnoremap g*  g*zz
nnoremap g#  g#z
"""" awesome stuff from vimbits.com
"""" keep selection after in/outdent
vnoremap < <gv
vnoremap > >gv
" easier increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>



""""Misc Settings

syntax on
syntax enable


