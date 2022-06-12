"""""" WSL compatibility """"""
function! Load(file)
    exe 'source '.stdpath('config').'/'.a:file
endfunction

"""""" Plug-ins """"""
if has("win32")
let plug_path = stdpath('data').'/plugged'
else
" TODO: Find out a better refresh to re use same plug-ins
" let plug_path = '/mnt/c/Users/Daniel Kiyoshi/AppData/Local/nvim-data/plugged'
let plug_path = '~/.vim/plugged'
endif
call plug#begin(plug_path)
call Load('plugs.vim')
call plug#end()

"""""" Language Server Protocol """"""
call Load('lsp.vim')

"""""" Tabs are smart spaces """"""
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab smarttab
" set smartindent	  " TODO: search this

"""""" Cursor """"""
" Reset cursor (set as a block)
set guicursor="n-c-v-sm-i-ci-ve-r-cr-o:block"
" Highlights the line where the cursor is
set cursorline

" Limit the cursor boundaries
set scrolloff=4

"""""" Side Columns """"""
" Numbers
set relativenumber number
" Columns
set colorcolumn=81
set signcolumn=auto

"""""" Colorscheme """"""
colorscheme elflord

"""""" Search """"""
set nohlsearch
set incsearch
set inccommand=split

"""""" Stopping blim on error """"""
set noerrorbells

"""""" Statusline """"""
set statusline=%<>\ %-15.20(\ %f%)
set statusline+=%(\ [%M%n%R%H%W]%)
set statusline+=\ %y
set statusline+=%(\ :%q:%) " Don't know this
set statusline+=%= " set aliging to left
set statusline+=\ %1*
set statusline+=%(\ :%a:%) " Don't know this
set statusline+=\ %10('%b:0x%B'%)
set statusline+=\ %0*
set statusline+=\ %5(%c%V%)
set statusline+=\ %9(%l/%L%)
set statusline+=\ -\ %-3p%%
set statusline+=\ <
" TODO: Search Highlight group / user
" statusline example:
"set statusline=%<%f%=\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)%O'%02b'

"""""" Listchars """"""
set list
" set listchars=eol:§,tab:<->,trail:~,nbsp:#
set listchars=eol:§,tab:᚛→,trail:~,nbsp:☺
" List of oels:ᚋ⨕
" List of tabs:ᐅᐊ᚛→←᚜
"tabs: 	  	 		eol
"nbsp: .
"trail:     
"white:      	 

"""""" Helper files """"""
" TODO: to search {
" set noswapfile
" set nobackup
set undodir=~/.vim/undodir
set undofile
" }

"""""" Other """"""

"""""" Remaps """"""
let mapleader = " "

" Fixing <c-]>
nnoremap <c-\> <c-]>

" Disabling K
nnoremap K <Esc>

" Yank
nnoremap Y y$

" ~Tilda~ (br-abnt)
" nnoremap ~~ ~
" nnoremap r~~ r~
" inoremap ~~ ~
" vnoremap ~~ ~

" jk/kj exiting insert
inoremap jk <Esc>
inoremap kj <Esc>

"""""" Window macros """"""
" Window Movement
nnoremap <a-h> <c-w>h
nnoremap <a-j> <c-w>j
nnoremap <a-k> <c-w>k
nnoremap <a-l> <c-w>l
nnoremap <a-left> <c-w>h
nnoremap <a-down> <c-w>j
nnoremap <a-up> <c-w>k
nnoremap <a-right> <c-w>l

inoremap <a-h> <Esc><c-w>h
inoremap <a-j> <Esc><c-w>j
inoremap <a-k> <Esc><c-w>k
inoremap <a-l> <Esc><c-w>l
inoremap <a-left> <Esc><c-w>h
inoremap <a-down> <Esc><c-w>j
inoremap <a-up> <Esc><c-w>k
inoremap <a-right> <Esc><c-w>l

tnoremap <a-h> <c-\><c-n><c-w>h
tnoremap <a-j> <c-\><c-n><c-w>j
tnoremap <a-k> <c-\><c-n><c-w>k
tnoremap <a-l> <c-\><c-n><c-w>l
tnoremap <a-left> <c-\><c-n><c-w>h
tnoremap <a-down> <c-\><c-n><c-w>j
tnoremap <a-up> <c-\><c-n><c-w>k
tnoremap <a-right> <c-\><c-n><c-w>l

" Resizeing Window
nnoremap <a-_> 2<c-w>-
nnoremap <a-+> 2<c-w>+
nnoremap <a->> 2<c-w>>
nnoremap <a-s-lt> 2<c-w><
tnoremap <a-_> <c-\><c-n>2<c-w>-i
tnoremap <a-+> <c-\><c-n>2<c-w>+i
tnoremap <a->> <c-\><c-n>2<c-w>>i
tnoremap <a-s-lt> <c-\><c-n>2<c-w><i

" Closing Window
nnoremap <a-q> <c-w>q

" Terminal Window
nnoremap <leader>t <c-w>s<cmd>terminal<CR><cmd>set nonu nornu<CR>
tnoremap <Esc> <c-\><c-n>
" TODO: Read about autocmd augroup and remove <cmd>set nonu nornu<CR>
" from nnoremap <leader>t
" augroup TermOpen * setlocal list

"""""" TODO List to Search """"""
" set hidden
" syntax
" digraph
" fold (fdm, foldlevelstart)
" dictionary
" buffer (bprevious, bnext, bfirst, blast, bd, b)
" tab (tabedit, gt)
" mpalocalleader
" <silent>

set encoding=utf-8
set fileencoding=utf-8

"""""" Mouse """"""
" Disable mouse
set mouse=

"""""" Local """"""
call Load('local.vim')
