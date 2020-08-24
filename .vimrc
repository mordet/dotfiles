set number

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set mouse=a
set incsearch
set hlsearch
set showmatch

set list
set listchars=tab:>-,trail:~,extends:>,precedes:<

" Remap copy and paste to OS clipboard
" if not working, you may have to install vim-gtk
vnoremap <C-c> "+y
"map <C-v> c<ESC>"+P
"imap <C-v> <ESC>"+pa

au FileType gitcommit set cc=72
au FileType yaml set foldmethod=indent

" Some basics:
set nofoldenable     " disable folding
set shiftwidth=4
set nocompatible
filetype plugin on
syntax on
set encoding=utf-8
set smartindent
set autoindent
set expandtab       " insert spaces instead of a tabs


" Enable relative line numbers to be displayed instead of absolute ones:
" Enable if you have no issues with slow relativenumber drawing or already have
" a patch covering that issue
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

" Exist insert mode using jj combination
inoremap jj <Esc>

" Automatically deletes all trailing whitespaces on save:
autocmd BufWritePre * %s/\s\+$//e

" Set light background mode
set background=light

" Airline plugin
" install with
"git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/dist/start/vim-airline
"git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/pack/dist/start/vim-airline-themes
:let g:airline_theme='sol'
" Powerline font may be needed to install via
"sudo apt-get install fonts-powerline
:let g:airline_powerline_fonts = 1
