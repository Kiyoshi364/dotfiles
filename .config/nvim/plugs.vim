Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

" Zig syntax
Plug 'ziglang/zig.vim'
" Disable  `zig fmt` on saving
let g:zig_fmt_autosave = 0

" Markdown viewer
    " If you have nodejs and yarn
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
nmap <c-s> <Plug>MarkdownPreview
" nmap <a-s> <Plug>MarkdownPreviewStop
" nmap <c-p> <Plug>MarkdownPreviewToggle
let g:mkdp_refresh_slow = 1
let g:mkdp_browser = 'vieb'
let g:mkdp_theme = 'dark'

" Lean
" Plug 'nvim-lua/plenary.nvim'
" Plug 'hrsh7th/nvim-compe'
" Plug 'Julian/lean.nvim'
