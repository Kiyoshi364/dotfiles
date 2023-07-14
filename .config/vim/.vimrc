set nocompatible
filetype on
filetype plugin on
filetype indent on

"""""" Tabs are smart spaces """"""
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab smarttab

"""""" Cursor """"""
" Highlight the line where the cursor is
set cursorline

" Limit the cursor boundaries
set scrolloff=4

"""""" Side Columns """"""
" Numbers
set number
" Colunms
set colorcolumn=81
set signcolumn=auto

"""""" Statusline """"""
set statusline=%<>\ %-15.20(\ %f%)
set statusline+=%(\ [%M%n%R%H%W]%)
set statusline+=\ %y
set statusline+=%(\ :%q:%) " Don't know this
set statusline+=%= " set alligning to left
set statusline+=\ %1*
set statusline+=%(\ :%a:%) " Don't know this
set statusline+=\ %10('%b:0x%B'%)
set statusline+=\ %0*
set statusline+=\ %5(%c%V%)
set statusline+=\ %9(%l/%L%)
set statusline+=\ -\ %-3p%%
set statusline+=\ <

"""""" Listchars """"""
set list
set listchars=eol:§,tab:ºªº,trail:%,nbsp:#

"""""" Remaps """"""
let mapleader = " "

"""" Helix adaptation """"
nnoremap x V
vnoremap x j

nnoremap U <c-r>

" Line Movement
nnoremap gl $
vnoremap gl $h

nnoremap gh ^
vnoremap gh ^

nnoremap gs 0
vnoremap gs 0

" Cursor
nnoremap c s
nnoremap C <c-v>j
vnoremap C j

"""" EndHelix adaptation """"

" Disabling K
nnoremap K <Esc>

" jk/kj exiting insert
inoremap jk <Esc>
inoremap kj <Esc>

"""""" Window macros """"""
" Window Movement
nnoremap <a-h>     <c-w>h
nnoremap <a-j>     <c-w>j
nnoremap <a-k>     <c-w>k
nnoremap <a-l>     <c-w>l
nnoremap <a-left>  <c-w>h
nnoremap <a-down>  <c-w>j
nnoremap <a-up>    <c-w>k
nnoremap <a-right> <c-w>l

inoremap <a-h>     <Esc><c-w>h
inoremap <a-j>     <Esc><c-w>j
inoremap <a-k>     <Esc><c-w>k
inoremap <a-l>     <Esc><c-w>l
inoremap <a-left>  <Esc><c-w>h
inoremap <a-down>  <Esc><c-w>j
inoremap <a-up>    <Esc><c-w>k
inoremap <a-right> <Esc><c-w>l

tnoremap <a-h>     <c-\><c-n><c-w>h
tnoremap <a-j>     <c-\><c-n><c-w>j
tnoremap <a-k>     <c-\><c-n><c-w>k
tnoremap <a-l>     <c-\><c-n><c-w>l
tnoremap <a-left>  <c-\><c-n><c-w>h
tnoremap <a-down>  <c-\><c-n><c-w>j
tnoremap <a-up>    <c-\><c-n><c-w>k
tnoremap <a-right> <c-\><c-n><c-w>l

" Resizeing Window
nnoremap <a-_>    2<c-w>-
nnoremap <a-+>    2<c-w>+
nnoremap <a->>    2<c-w>>
nnoremap <a-s-lt> 2<c-w><

tnoremap <a-_>    <c-\><c-n>2<c-w>-i
tnoremap <a-+>    <c-\><c-n>2<c-w>+i
tnoremap <a->>    <c-\><c-n>2<c-w>>i
tnoremap <a-s-lt> <c-\><c-n>2<c-w><i

" Closing Window
nnoremap <a-q> <c-w>q

" Terminal Window
nnoremap <leader>t <c-w>s<cmd>terminal<CR><cmd>set nonu nornu<CR>
tnoremap <ESC> <c-\><c-n>

"""""" Encoding """"""
set encoding=utf-8
set fileencoding=utf-8
