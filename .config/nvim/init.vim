set nocompatible
filetype off
filetype plugin indent on

set autowrite
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

" If annoyed by autosuggestion delete this
" au FileType go inoremap <buffer> . .<C-x><C-o>
" set completeopt-=preview

" Themes bc I'm a piece of shit
" let g:seoul256_background = 235
" colo seoul256
colo onenord

" Default config
:set expandtab
:set tabstop=2
:set shiftwidth=2
:set number
:set textwidth=120
:syntax on

:highlight Comment ctermfg=yellow

" File specific config
au FileType make set noexpandtab shiftwidth=2 tabstop=2 softtabstop=0
au FileType yaml set expandtab tabstop=2 shiftwidth=2 softtabstop=0
au FileType html set expandtab tabstop=2 shiftwidth=2 softtabstop=0
au FileType javascript set expandtab tabstop=2 shiftwidth=2 softtabstop=0
au FileType typescript set expandtab tabstop=2 shiftwidth=2 softtabstop=0
au FileType javascriptreact set expandtab tabstop=2 shiftwidth=2 softtabstop=0
au FileType typescriptreact set expandtab tabstop=2 shiftwidth=2 softtabstop=0
au FileType python set expandtab tabstop=4 shiftwidth=4 softtabstop=0
au FileType go set noexpandtab tabstop=2 shiftwidth=2 softtabstop=0
au FileType tf set expandtab tabstop=2 shiftwidth=2 softtabstop=0
au FileType c set expandtab tabstop=2 shiftwidth=2 softtabstop=0
au FileType cpp set expandtab tabstop=2 shiftwidth=2 softtabstop=0
au FileType java set expandtab tabstop=2 shiftwidth=2 softtabstop=0
au FileType proto set expandtab tabstop=2 shiftwidth=2 softtabstop=0

" Banner config
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=2

" NERDTree config
nmap <silent><C-n> :NvimTreeToggle<CR>
nmap <silent><C-f> :Telescope find_files<CR>
nmap <silent><C-g> :Telescope live_grep<CR>

" Lua plugins
"
lua << EOF
require('nvim-tree').setup()
require('bufferline').setup()
require('telescope').setup()
require('lualine').setup({
  options = {
    theme = 'onenord'
  }
})
EOF

" Bufferline remap
nnoremap <silent><leader>1 <Cmd>BufferLineGoToBuffer 1<CR>
nnoremap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
nnoremap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
nnoremap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
nnoremap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
nnoremap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
nnoremap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
nnoremap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
nnoremap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>
nnoremap <silent><C-h> <Cmd>BufferLineCloseLeft<CR>
nnoremap <silent><C-l> <Cmd>BufferLineCloseRigh<CR>

" Blamer binds
let g:blamer_date_format = '%Y-%m-%dT%H:%M'
nmap <silent><C-b> <Cmd>BlamerToggle<CR>

" let g:coc_user_config['languageserver'].ccls.initializationOptions.clang.extraargs = [ '-std=c++17' ]
