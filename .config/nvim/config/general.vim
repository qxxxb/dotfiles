" Colorscheme
set background=dark

if (has("termguicolors"))
    set termguicolors
endif

" Show line numbers
set number

" Highlight matching [{()}]
set showmatch

" Completion
" ==========================================================

set wildmenu
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words

" Case insensitive command line completion
set wildignorecase

" Command line completion behavior like that of my zsh setup
set wildmode=longest,list:longest,full

" Automatically close preview window
autocmd InsertLeave * silent! pclose!

" Indentation
" ==========================================================

set autoindent
set smartindent
set cinoptions=(0,Ws,m1
set backspace=indent,eol,start
set complete-=i
set smarttab

set tabstop=4
set shiftwidth=4
set expandtab

" " List mode
set listchars=tab:¦\ ,trail:•,extends:›,precedes:‹,nbsp:␣
set list

" Search
" ==========================================================

" Highlight search results
set hlsearch

" Incremental search
set incsearch

" Ignorecase if search is all lowercase, case sensitive otherwise
set ignorecase
set smartcase

" Other
" ==========================================================

" Clipboard
set clipboard+=unnamedplus

" Switch buffers without saving
set hidden

" Set title
if has("title")
    set title
endif

" Don't increment/decrement numbers in octal
set nrformats-=octal

" Auto reload file if modified
set autoread

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
    set t_Co=16
endif
