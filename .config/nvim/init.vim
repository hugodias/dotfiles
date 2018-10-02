filetype off

call plug#begin()

" Languages and frameworks
Plug 'tpope/vim-rails'
Plug 'mileszs/ack.vim'
Plug 'junegunn/vim-easy-align'
Plug 'yggdroot/indentline'
Plug 'ervandew/supertab'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'w0rp/ale'
Plug 'machakann/vim-highlightedyank'
Plug 'rainerborene/vim-reek'
Plug 'sheerun/vim-polyglot'

" Search and replace
Plug 'brooth/far.vim'

" Text Object
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'tpope/vim-commentary'

" Tools
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Theme
Plug 'morhetz/gruvbox'
Plug 'edkolev/tmuxline.vim'

call plug#end()

filetype plugin indent on

let g:airline_powerline_fonts = 1
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1

set tabstop=2    " a tab is two spaces
set shiftwidth=2 " an autoindent (with <<) is two spaces
set expandtab    " use spaces, not tabs
set listchars+=tab:▸\ ,trail:⋅,nbsp:⋅ " Display tabs and trailing spaces
set number
set ruler
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287

set lazyredraw
set ttyfast
set re=1

" vim-test mappings
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Disable arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Fuzzy-find with fzf
map <C-p> :Files<cr>
nmap <C-p> :Files<cr>

" Easy align
xmap ga <Plug>(EasyAlign)

" Vim Reek
let g:reek_always_show = 0
let g:reek_on_loading = 0
nmap <silent> <leader>r :RunReek<CR>

let g:ackprg = 'ag --vimgrep --smart-case'
cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack

set clipboard+=unnamed  " use the clipboards of vim and win

set background=dark
silent! colors gruvbox

set relativenumber

" vim undo persistent
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

" configure vim-test and neoterm
if has("nvim")
  let g:test#strategy = 'neoterm'
  let g:neoterm_shell = 'zsh'
  let g:neoterm_run_tests_bg = 1
endif

set nocompatible
filetype off

let &runtimepath.=',~/.vim/bundle/ale'

filetype plugin on
