" BUNDLES:
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'gmarik/Vundle.vim'
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'gregsexton/MatchTag'
  Plugin 'scrooloose/nerdtree'
  Plugin 'scrooloose/syntastic'
  Plugin 'jelera/vim-javascript-syntax'
  Plugin 'jeffkreeftmeijer/vim-numbertoggle'
  Plugin 'tpope/vim-endwise'
  Plugin 'kchmck/vim-coffee-script'
  Plugin 'terryma/vim-multiple-cursors'
  Plugin 'vim-ruby/vim-ruby'
  Plugin 'rust-lang/rust.vim'
call vundle#end()
filetype plugin indent on
syntax on

" SETTINGS:

set clipboard=unnamed
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set number " Show line numbers.
set splitbelow
set splitright
" set colorcolumn=120 " Add a ruler.
set laststatus=2 " Always show status line.
set tags=./ctags " Source for ctags tags.
set list
set listchars=tab:▸\ " Set textmate symbols for invisible characters
highlight ColorColumn ctermbg=lightgrey " Make column gray.

" PLUGIN SETTINGS:

" Ctrl-P-Bug-Fix-Settings:
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

" Syntastic:
let g:syntastic_check_on_open = 1
let g:syntastic_cpp_compiler_options = '-std=c++11' " C++11 syntax

" SCRIPTS:

" Remove trailing whitespace:
autocmd BufWritePre * :%s/\s\+$//e

" FILETYPES:
autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby
autocmd BufNewFile,BufRead *.json.jbuilder set filetype=ruby
autocmd BufNewFile,BufRead *.jbuilder set filetype=ruby
autocmd BufNewFile,BufRead *.hbs set filetype=html
autocmd BufNewFile,BufRead *.jst.ejs set filetype=html
autocmd BufNewFile,BufRead *.ejs set filetype=html
autocmd BufNewFile,BufRead Gemfile set filetype=ruby
autocmd BufNewFile,BufRead *.hamlc set filetype=haml
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd BufNewFile,BufRead *.javapublic set filetype=java

autocmd BufNewFile,BufRead *.c set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab
autocmd BufNewFile,BufRead *.cpp set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab
autocmd BufNewFile,BufRead *.h set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab
autocmd BufNewFile,BufRead *.js set tabstop=4 shiftwidth=4 softtabstop=4
autocmd BufNewFile,BufRead *.py set tabstop=4 shiftwidth=4 softtabstop=4
autocmd BufNewFile,BufRead *.java set tabstop=4 shiftwidth=4 softtabstop=4
autocmd BufNewFile,BufRead *.javapublic set tabstop=4 shiftwidth=4 softtabstop=4
autocmd BufNewFile,BufRead *.lua set tabstop=4 shiftwidth=4 softtabstop=4


" Colorscheme:
colorscheme molokai

" Good Colorschemes:
"
" 256-grayvim
" 256-jungle
" apprentice
" babymate256
" badwolf
" blacklight
" blue
" bubblegum
" burnttoast256
" busierbee
" bvemu
" candyman
" charged-256
" Chasing_Logic
" darkburn
"
" molokai
" strange

" BugFix:
set backspace=indent,eol,start " Backspace Bug
set timeoutlen=1000 ttimeoutlen=0 " Escape Delay Bug
if &term =~ '256color'
    " Disable Background Color Erase (BCE) so that color schemes
    " work properly when Vim is used inside tmux and GNU screen.
    set t_ut=
endif
