" Automatically install vim-plug
if empty(glob("~/.local/share/nvim/site/autoload/plug.vim"))
    execute '!sh -c ''curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'''
    autocmd VimEnter * PlugInstall
endif

silent! if plug#begin('~/.local/share/nvim/plugged')
    " Pretty statusline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " File tree
    Plug 'scrooloose/nerdtree'

    " Fuzzy finder
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

    " Management of parenthesis, brackets, etc.
    Plug 'tpope/vim-surround'

    " Show indent guides for files indented with spaces
    Plug 'Yggdroot/indentLine'

    " Simple completion with <TAB>
    Plug 'ajh17/VimCompletesMe'

    " Manage matching components
    Plug 'andymass/vim-matchup'

    " Autoclose quotes, parenthesis, brackets
    Plug 'jiangmiao/auto-pairs'

    " Comment operator
    Plug 'tpope/vim-commentary'

    " New text object based on indentation
    Plug 'michaeljsmith/vim-indent-object'

    " Repeat action from plugin
    Plug 'tpope/vim-repeat'

    call plug#end()
    " Automatically executes:
    "     filetype plugin indent on
    "     syntax enable
endif
