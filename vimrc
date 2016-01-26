"Basic configuration
"================================================
set nocompatible
let mapleader=","
syntax on
set backspace=2
set laststatus=2
set history=500
set ruler
set number
set background=dark
if $TERM == "xterm-256color"
	set t_Co=256
endif
if !has('gui_running')
	colorscheme tir_black
else
	"colorscheme ir_dark
	"colorscheme pablo
	"colorscheme brookstream
	"colorscheme stingray
	"colorscheme maroloccio3
	colorscheme solarized
	"colorscheme nefertiti
	"colorscheme mustang
endif

"Indentation settings
"================================================
set tabstop=4
set shiftwidth=4
"set expandtab
"set softtabstop=4
"set noexpandtab
"set cindent
"set autoindent
set smarttab
filetype plugin indent on
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=2

"Search settings
"================================================
set showmatch
set ignorecase
set smartcase
set incsearch
set hlsearch
nmap <silent> <leader>q :nohlsearch<CR>

"Extra key bindings
"================================================
nmap j gj
nmap k gk
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l
imap <Esc> <C-c>

"Syntax highlighting (for strange extensions)
"================================================
au BufRead,BufNewFile *.sage set filetype=python
au BufRead,BufNewFile *.adoc set filetype=asciidoc 

execute pathogen#infect()
"autocmd FileType tex setlocal sw=2 ts=2 spell spelllang=en_us
