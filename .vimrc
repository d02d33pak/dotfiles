"
" ██████╗ ███████╗███████╗██████╗  █████╗ ██╗  ██╗
" ██╔══██╗██╔════╝██╔════╝██╔══██╗██╔══██╗██║ ██╔╝
" ██║  ██║█████╗  █████╗  ██████╔╝███████║█████╔╝
" ██║  ██║██╔══╝  ██╔══╝  ██╔═══╝ ██╔══██║██╔═██╗
" ██████╔╝███████╗███████╗██║     ██║  ██║██║  ██╗
" ╚═════╝ ╚══════╝╚══════╝╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝'s
" .vimrc / init.vim


"""Misc
syntax enable
syntax on

"""Vundle Setup
set nocompatible                "be iMproved, required
filetype off                    "required

"""Airline settings
let g:airline_powerline_fonts = 1

"""Set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()             "required
Plugin 'VundleVim/Vundle.vim'   "required

Plugin 'dracula/vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'sheerun/vim-polyglot'
Plugin 'vim-airline/vim-airline'
Plugin 'https://tpope.io/vim/commentary.git'
Plugin 'https://tpope.io/vim/surround.git'
Plugin 'https://github.com/airblade/vim-gitgutter.git'
Plugin 'https://github.com/Raimondi/delimitMate'
Plugin 'junegunn/rainbow_parentheses.vim'

call vundle#end()               "required
filetype plugin indent on       "required


"""Setting color scheme [theme]
colorscheme dracula


"""Rainbow Parentheses and auto invoke on load
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
augroup LoadRainbow
  autocmd!
  autocmd VimEnter * :RainbowParentheses
augroup END


"""Render White Space
set listchars=space:·           "show spaces as dot
set list                        "show listed chars


"""Basic Behavior
set showmode
set scrolloff=9                 "move text up a little (offset)
set wrap                        "wrap lines
set linebreak
set textwidth=0
set wrapmargin=0
set number                      "show line numbers
set mouse=a                     "enable mouse support
set ruler                       "show row and column in statusbar
set showmatch                   "show matching brackets

set autochdir                   "automatically change current directory path


"""Turn on the Wild menu (horizontal completion bar)
set wildmenu


"""Tab Settings
set tabstop=4                   "set tab width
set expandtab                   "convert tab to spaces
set shiftwidth=4                "indent spaces

set autoindent                  "auto indent
set smartindent                 "insert indent after {[( 


"""Search Settings
set hlsearch                    "highlight search
set incsearch                   "highlight as you type
set ignorecase                  "ignorecase in search
set smartcase                   "case sensitive if text contains uppercase


"""Explorer Settings
let g:netrw_banner=0            "dont show the banner up top
let g:netrw_liststyle=3         "style 3 of listing directories
let g:netrw_browse_split=2      "open files in a new vertical split
let g:netrw_altv=1              "open the split on the right side
let g:netrw_winsize=20          "specify initial size of new windows made
let g:netrw_list_hide='^\.'     "comma-separated pattern list for hiding files
let g:netrw_hide=1              "show not-hidden files


"""Resize Vertical Split
nnoremap <silent> <Space>] :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Space>[ :exe "vertical resize " . (winwidth(0) * 2/3)<CR>


"""Key Bindings
nnoremap j gj
nnoremap k gk


"""Space bindings
nnoremap <Space>a ggVG
vnoremap <Space>c "+y
nnoremap <Space>v "+p
nnoremap <Space>s :w<CR>
nnoremap <Space>w :wq<CR>
nnoremap <Space>q :q!<CR>
nnoremap <Space>o o<Esc>k
nnoremap <Space>O O<Esc>k


"""Center display after searching
nnoremap n   nzz
nnoremap N   Nzz
nnoremap *   *zz
nnoremap #   #zz
nnoremap g*  g*zz
nnoremap g#  g#z



"""Split Settings
nnoremap <silent> <Space>e :Vexplore .<CR>
nnoremap <Space>j <C-W>p
nnoremap <Space>k <C-W>w


"""Keep selection after in/outdent
vnoremap < <gv
vnoremap > >gv


"""Easier increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

