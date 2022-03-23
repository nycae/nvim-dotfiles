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
colo onedark

" Default config
:set tabstop=4
:set shiftwidth=4
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
nmap <C-n> :NERDTreeToggle<CR>

