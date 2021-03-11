" Leader
let mapleader=" "

" Lines
" ==========================================================

" Toggle breaking words on linebreaks
nnoremap <leader>wb :set linebreak!<CR>
nnoremap <leader>wr :set wrap!<CR>

" Movement
" ==========================================================

" Move vertically by screen line
nnoremap j gj
nnoremap k gk
" vnoremap j gj
" vnoremap k gk
xnoremap <expr> j mode() ==# 'V' ? 'j' : 'gj'
xnoremap <expr> k mode() ==# 'V' ? 'k' : 'gk'

" Move to beginning/end of line
nnoremap E $
nnoremap B ^
onoremap E $
onoremap B ^
vnoremap E $
vnoremap B ^

" WORD motions
nnoremap $ E
nnoremap ^ B
onoremap $ E
onoremap ^ B
xnoremap $ E
xnoremap ^ B

" Enable mouse
set mouse=a

" Editing
" ==========================================================

nnoremap <leader>d "_d
xnoremap <leader>d "_d

" Insert mode shortcuts
" ==========================================================

" jk is faster than <ESC>
inoremap jk <ESC>

inoremap <C-U> <C-G>u<C-U>

" Buffers
" ==========================================================

nnoremap <silent> <BS> <C-^>

" Delete a buffer without closing the window
nnoremap <silent> <leader>q :BD<CR>

nnoremap <silent> - :bnext<CR>
nnoremap <silent> _ :bprevious<CR>

" Indentation
" ==========================================================

nnoremap <leader>ie :set tabstop? shiftwidth? expandtab?<CR>
nnoremap <leader>it4 :set tabstop=4 shiftwidth=4 noexpandtab<CR>
nnoremap <leader>it2 :set tabstop=2 shiftwidth=2 noexpandtab<CR>
nnoremap <leader>is4 :set tabstop=4 shiftwidth=4 expandtab<CR>
nnoremap <leader>is2 :set tabstop=2 shiftwidth=2 expandtab<CR>

nnoremap <leader>fe :set foldmethod?<CR>
nnoremap <leader>fm :set foldmethod=manual<CR>
nnoremap <leader>fi :set foldmethod=indent<CR>
nnoremap <leader>fk :set foldmethod=marker<CR>

" Highlight last inserted text
nnoremap gV `[v`]

" Spellchecking
nnoremap <silent> <leader>* :set spell!<CR>
