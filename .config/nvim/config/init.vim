" Automatically install vim-plug
if empty(glob("~/.local/share/nvim/site/autoload/plug.vim"))
    execute '!sh -c ''curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'''
    autocmd VimEnter * PlugInstall
endif

silent! if plug#begin('~/.local/share/nvim/plugged')
    " Pretty statusline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Extra highlighting on NERDTree
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    " File tree
    Plug 'scrooloose/nerdtree'

    " Fuzzy finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " Tag outline viewer; show current tag in status bar
    Plug 'majutsushi/tagbar'

    " Temporarily maximize splits (and restore it)
    Plug 'szw/vim-maximizer'

    " Management of parenthesis, brackets, etc.
    Plug 'tpope/vim-surround'

    " Detect indentation
    Plug 'tpope/vim-sleuth'

    " Show indent guides for files indented with spaces
    Plug 'Yggdroot/indentLine'

    " Simple completion with <TAB>
    Plug 'ajh17/VimCompletesMe'

    " Whitespace management
    Plug 'ntpeters/vim-better-whitespace'

    " Asynchronous Lint Engine
    Plug 'dense-analysis/ale'

    " Manage matching components
    Plug 'andymass/vim-matchup'

    " Autoclose quotes, parenthesis, brackets
    Plug 'jiangmiao/auto-pairs'

    " Word case utilities for searching and editing
    Plug 'tpope/vim-abolish'

    " incsearch (dependency of `incsearch-fuzzy`)
    Plug 'haya14busa/incsearch.vim'

    " Fuzzy incsearch
    Plug 'haya14busa/incsearch-fuzzy.vim'

    " Show search count
    Plug 'osyo-manga/vim-anzu'

    " Improved search with *
    Plug 'haya14busa/vim-asterisk'

    " Comment operator
    Plug 'tpope/vim-commentary'

    " Snippet engine
    Plug 'SirVer/ultisnips'

    " Snippets
    Plug 'honza/vim-snippets'

    " New text object based on indentation
    Plug 'michaeljsmith/vim-indent-object'

    " Useful mappings
    Plug 'tpope/vim-unimpaired'

    " Subword motions
    Plug 'chaoren/vim-wordmotion'

    Plug 'mattn/emmet-vim'

    " Autoclose HTML tags
    Plug 'alvan/vim-closetag'

    " Git integration
    Plug 'tpope/vim-fugitive'

    " Show git diff in gutter
    Plug 'airblade/vim-gitgutter'

    " Repeat action from plugin
    Plug 'tpope/vim-repeat'

    " Plug 'edkolev/tmuxline.vim'

    Plug 'qpkorr/vim-bufkill'

    call plug#end()
    " Automatically executes:
    "     filetype plugin indent on
    "     syntax enable
endif
