execute 'source' fnamemodify(expand('<sfile>'), ':h').'/core/vimrc'

call plug#begin('~/.vim/plugged')
Plug 'arcticicestudio/nord-vim'
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'
Plug 'liuchengxu/graphviz.vim'
Plug 'svermeulen/vim-easyclip'
Plug 'tpope/vim-repeat'
Plug 'qpkorr/vim-renamer'
call plug#end()

colorscheme nord

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]

:command GITLOG :vsplit| 0read ! git lg2
:command CPPCHECK :!cppcheck %

"augroup fmt
""  autocmd!
""  autocmd BufWritePre * undojoin | Neoformat
"augroup END

let g:vimtex_compiler_progname = 'nvr'
let g:tex_flavor  = 'latex'
let g:tex_conceal = ''
let g:vimtex_latexmk_continuous = 1
let g:vimtex_view_method = 'zathura'

noremap <Leader>y "*yy

nnoremap \latex :-1read ~/.config/nvim/templates/.skeleton.latex<CR>
nnoremap \html :-1read ~/.config/nvim/templates/.skeleton.html<CR>

inoremap ,+ <Esc>/<++><CR>"_c4l

set clipboard+=unnamedplus

let g:go_bin_path = expand("/usr/local/go/bin/go")
