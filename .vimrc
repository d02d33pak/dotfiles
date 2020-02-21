set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'vim-airline/vim-airline'
" Plugin for statusbar

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:airline_powerline_fonts = 0

"""" Basic Behavior
let mapleader=','

set showmode
set scrolloff=33                    "move text up a little (offset)
set wrap							"wrap lines
set linebreak
set textwidth=0
set wrapmargin=0
set number                          "show line numbers
set mouse=a							"enable mouse support
set ruler							"show row and column in statusbar
set showmatch						"show matching brackets
"set visualbell						"blink instead of audio bell

set autochdir                       "automatically change current directory path


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
let g:netrw_winsize = 20
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


