call plug#begin('~/.vim/plugged')
Plug 'junegunn/seoul256.vim'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'sjl/gundo.vim'
Plug 'Shougo/neocomplcache'
Plug 'majutsushi/tagbar'
Plug 'eagletmt/ghcmod-vim'
Plug 'scrooloose/syntastic'
Plug 'tomtom/tcomment_vim'
Plug 'Shougo/vimproc'
Plug 'eagletmt/neco-ghc'
Plug 'itchyny/vim-haskell-indent'
Plug 'Valloric/YouCompleteMe'
call plug#end()

filetype on
filetype plugin indent on
syntax on

colorscheme seoul256

let mapleader = " "
let maplocalleader = " "

set mouse="a"

" Show tabs
set list listchars=tab:»·,nbsp:␣,trail:·

set completeopt=longest,menuone

set textwidth=0
set expandtab
set softtabstop=4
set shiftwidth=4
set autoindent
set ruler
set wildmenu

set backup
set backupdir=~/.backup/

set undofile
set undodir=$HOME/.vim-undos/

let g:ctrlp_cmd = "CtrlPBufTag"

set ignorecase
set smartcase

set autoread

let g:ctrlp_root_markers = ['pom.xml', '.projectile']
set wildignore+=*/.git/*,*.hi,*.o

source ~/.config/nvim/mappings.vim

" Setup ghc-mod signs
source ~/.config/nvim/ghcmod_signs.vim
if !exists("ghcmod_signs_loaded")
    let ghcmod_signs_loaded = 1
    autocmd BufwritePost *.hs if exists(":GhcModCheck")|call Ghcmod_check_and_sign()|endif
endif

" Setup haskell autocompletion
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
let g:ycm_semantic_triggers = {'haskell': ['.']}
