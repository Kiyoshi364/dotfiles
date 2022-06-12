cd %:p:h

" Highlight everything that is searched
" (doesn't work on ubuntu version :sadface: )
augroup vimrc-incsearch-highlight
    autocmd!
    autocmd CmdlineEnter /,\? :set hlsearch
    autocmd CmdlineLeave /,\? :set nohlsearch
augroup END
