" .config/nvim/init.vim

" Space over tabs
set expandtab
set shiftround
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Convenience
set clipboard=unnamed
set hidden
set nowrap
set number
set mouse=a
set wildmenu
set wildmode=list:longest,full
set virtualedit=onemore

" Typos
cab W  w
cab Q  q
cab Wq wq
cab wQ wq
cab WQ wq
cab Qa qa
cab qA qa
cab QA qa

" Avoid unconfortable shift press
nnoremap ; :
nnoremap <Tab> :

" Better hjkl for dvorka
" text nav
nmap h <Left>
nmap t <Up>
nmap n <Down>
nmap s <Right>
" split nav
nmap H <c-w><Left>
nmap T <c-w><Up>
nmap N <c-w><Down>
nmap S <c-w><Right>

" Escape with ctrl-c
nmap <c-c> <esc>
imap <c-c> <esc>
vmap <c-c> <esc>
omap <c-c> <esc>

" Easier movement over code blocks
vnoremap < <gv
vnoremap > >gv

" Bubble single line
nmap <silent><C-Up>   <Esc>:m -2<Return>
nmap <silent><C-Down> <Esc>:m +1<Return>

call plug#begin()

" Clang format
Plug 'rhysd/vim-clang-format'

" Colorschemes
Plug 'flazz/vim-colorschemes'

" Ctrl Space
Plug 'vim-ctrlspace/vim-ctrlpace'

" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Git
Plug 'tpope/vim-fugitive'

" Snippets Engine
Plug 'SirVer/ultisnips'

" Snippets Collection
Plug 'honza/vim-snippets'

" Status Line
Plug 'vim-airline/vim-airline'

" Status line themes
Plug 'vim-airline/vim-airline-themes'

" code completion support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Useful splash page
Plug 'mhinz/vim-startify'

" gdb
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }

" python formatter
Plug 'averms/black-nvim', { 'do': ':UpdateRemotePlugins' }

" Keep undo sanity accessible
Plug 'mbbill/undotree'

" File navigation
" Need nerd font, see: https://github.com/ryanoasis/nerd-fonts
" Need nerd font set on terminal: https://www.behova.net/fonts-in-alacritty/
Plug 'ryanoasis/vim-devicons'
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

" Zig support
Plug 'ziglang/zig.vim'

call plug#end()

" Use monokai
colorscheme monokai-phoenix

" Format C/C++
let g:clang_format#command           = 'clang-format'
let g:clang_format#detect_style_file = 1

autocmd BufWritePre *.h   :ClangFormat
autocmd BufWritePre *.c   :ClangFormat
autocmd BufWritePre *.hpp :ClangFormat
autocmd BufWritePre *.cpp :ClangFormat

