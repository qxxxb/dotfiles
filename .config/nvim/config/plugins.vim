" airline
" ==========================================================

let g:airline_powerline_fonts=1
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

let $FZF_DEFAULT_OPTS='--height 50% --reverse --prompt=\ ' .
\ ' --bind ctrl-a:select-all --bind ctrl-d:deselect-all'

" matchup
" ==========================================================

let g:matchup_matchparen_status_offscreen=0
