set number

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set mouse=a
set incsearch
set hlsearch
set showmatch

set list
set listchars=tab:>-,trail:~,extends:>,precedes:<

vmap <C-c> "+y
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

au FileType gitcommit set cc=72
au FileType yaml set foldmethod=indent

" Some basics:
	set nofoldenable     " disable folding
	set shiftwidth=4
	set nocompatible
	filetype plugin on
	syntax on
	set encoding=utf-8

" Enable relative line numbers to be displayed instead of absolute ones:
	set number relativenumber

" Autocompletion:
	set wildmode=longest,list,full

" Disable automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Splits optn at the bottom and right:
	set splitbelow splitright

" Navigate a splits without pressing w:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" Automatically deletes all trailing whitespaces on save:
	autocmd BufWritePre * %s/\s\+$//e
