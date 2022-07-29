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
let g:airline_theme='papercolor'


"""Set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()             "required
Plugin 'VundleVim/Vundle.vim'   "required

Plugin 'junegunn/goyo.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'sheerun/vim-polyglot'
Plugin 'junegunn/rainbow_parentheses.vim'
Plugin 'https://tpope.io/vim/commentary.git'
Plugin 'https://tpope.io/vim/surround.git'
Plugin 'https://github.com/airblade/vim-gitgutter.git'
Plugin 'https://github.com/Raimondi/delimitMate'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}

"""Themes
Plugin 'dracula/vim'
Plugin 'sonph/onehalf', { 'rtp': 'vim' }
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'https://github.com/morhetz/gruvbox'

" Add maktaba and codefmt to the runtimepath.
" (The latter must be installed before it can be used.)
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plugin 'google/vim-glaive'
" ...
call vundle#end()               "required
" the glaive#Install() should go after the "call vundle#end()"
call glaive#Install()

filetype plugin indent on       "required


"""Setting color scheme [theme]
set background=dark
colorscheme papercolor


"""Function to randomly set a colorscheme
let themes = ['darkblue', 'dracula', 'gruvbox', 'onehalfdark', 'onehalflight', 'papercolor', 'torte']
nnoremap <silent> <Space>t :exe 'colorscheme' themes[rand() % (len(themes) - 1 ) ]<CR>


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
set cursorline                  "highlight current line
set showmode
set scrolloff=9                 "top and bottom margin
set wrap                        "wrap lines
set linebreak
set textwidth=0
set wrapmargin=0
set number                      "show line numbers
set mouse=a                     "enable mouse support
set ruler                       "show row and column in statusbar
set colorcolumn=80              "show vertical ruler line at 80 chars
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
let g:netrw_browse_split=0      "open files in a new vertical split
let g:netrw_altv=1              "open the split on the right side
let g:netrw_winsize=20          "specify initial size of new windows made
let g:netrw_list_hide='^\.'     "comma-separated pattern list for hiding files
let g:netrw_hide=1              "show not-hidden files


"""Resize Vertical Split
nnoremap <silent> <Space>= :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Space>- :exe "vertical resize " . (winwidth(0) * 2/3)<CR>


"""Key Bindings
nnoremap j gj
nnoremap k gk


"""Open file under cursor in VSpilt
map gv :vertical wincmd f<CR>


"""Space bindings
nnoremap <Space>a ggVG
vnoremap <Space>c "+y
nnoremap <Space>v "+p
nnoremap <Space>s :w<CR>
nnoremap <Space>w :wq<CR>
nnoremap <Space>q :q!<CR>
nnoremap <Space>o mm o<Esc>`m
nnoremap <Space>O mm O<Esc>`m
nnoremap <silent> <Space>, :nohl<CR>
nnoremap <silent> <Space><Space> :Goyo<CR>
nnoremap <Space>f :FormatCode<CR>:w<CR>

let g:goyo_width = 100


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

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
