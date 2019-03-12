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

set nofoldenable     " disable folding
set shiftwidth=4
