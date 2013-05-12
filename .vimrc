set history=20
set ruler
set shiftwidth=2
set smartindent
set backspace=2
set whichwrap=24
set showmatch
set splitbelow
set laststatus=2
set expandtab
autocmd BufRead *.html set shiftwidth=2

set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp,utf-8
set fileformats=unix,dos,mac
set fenc=utf-8
set enc=utf-8
set cursorline

set statusline=%<%f\ %{'['.(&fenc!=''?&fenc:&enc).']'}%=%l,%c\ \
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif

syntax on
colorscheme delek_custom
filetype on
filetype indent on
filetype plugin on

helptags ~/.vim/doc
