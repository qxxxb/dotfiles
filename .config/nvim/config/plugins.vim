" airline
" ==========================================================

let g:airline_theme='wombat'
let g:airline#extensions#tabline#enabled=1

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

let g:airline_symbols.dirty='*'

let g:airline_mode_map = {
    \ 'n'  : 'N',
    \ 'ni' : 'N',
    \ 'no' : 'N'
    \ }

" indentLine
" ==========================================================

let g:indentLine_showFirstIndentLevel=1

" FZF
" ==========================================================

let $FZF_DEFAULT_OPTS='--height 50% --reverse --prompt=$\ ' .
\ ' --bind ctrl-a:select-all --bind ctrl-d:deselect-all'

" gitgutter
" ==========================================================

" Disable by default (ugly)
let g:gitgutter_enabled=0

" Update more quickly
set updatetime=500

" NERDTree
" ==========================================================

" Quit NERDTree after opening file
let NERDTreeQuitOnOpen=1

" Minimal UI
let g:NERDTreeMinimalUI=1

" lengthmatters
" ==========================================================

let g:lengthmatters_excluded=[
    \ 'unite',
    \ 'tagbar',
    \ 'startify',
    \ 'gundo',
    \ 'vimshell',
    \ 'w3m',
    \ 'nerdtree',
    \ 'help',
    \ 'qf',
    \ 'dirvish',
    \ 'far_vim',
    \ 'json'
    \ ]

let g:lengthmatters_on_by_default=0

" anzu
" ==========================================================

let g:airline#extensions#anzu#enabled=0

" ALE
" ==========================================================

let g:ale_fixers={}
" let g:ale_hover_cursor=0 " This causes errors for me
let g:ale_fixers['python']=['black']
" let g:ale_fixers['php']=['php_cs_fixer']
let g:ale_fixers['javascript']=['prettier', 'eslint']
let g:ale_fixers['vue']=['prettier', 'eslint']

" let g:ale_rust_cargo_use_clippy=1
" let g:ale_fixers['rust']=['rustfmt']
" let g:ale_c_parse_compile_commands=1

" matchup
" ==========================================================

let g:matchup_matchparen_status_offscreen=0

" ==========================================================
" closetag
" ==========================================================

let g:closetag_filenames='*.html,*.xhtml,*.phtml,*.php'

" markdown
" ==========================================================

let g:vim_markdown_new_list_item_indent=2
let g:vim_markdown_conceal=0
let g:vim_markdown_conceal_code_blocks=0
let g:vim_markdown_folding_disabled=1

" UltiSnips
" ==========================================================

let g:UltiSnipsSnippetDirectories=["UltiSnips", $HOME . "/.config/nvim/UltiSnips"]

" gutentags
" ==========================================================

let g:gutentags_ctags_exclude=["*.min.js", "*.min.css", ".git", "node_modules"]
