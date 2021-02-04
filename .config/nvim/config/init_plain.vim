silent! if plug#begin('~/.local/share/nvim/plugged')
    Plug 'dense-analysis/ale'
    call plug#end()
    " Automatically executes:
    "     filetype plugin indent on
    "     syntax enable
endif
