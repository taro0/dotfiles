"*************
" Plugin
"*************
" vim-plug is distributed as a single Vimscript file.
" All you have to do is to download the file in a directory so that Vim can load it.
" $ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'scrooloose/nerdtree'     " Filer
Plug 'ctrlpvim/ctrlp.vim'      " File searching
Plug 'dense-analysis/ale'      " Linter
Plug 'simeji/winresizer'       " Window resizing

Plug 'leafgarland/typescript-vim'
" List ends here. Plugins become visible to Vim after this call.
" Run :PlugInstall to install the plugins.
call plug#end()

"*************
" Basic setup
"*************
syntax enable
filetype plugin on

set number
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast
set history=200
set visualbell t_vb=
set noerrorbells
set showmatch
set cursorline
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
set clipboard+=unnamed         " Yank to clipboard
set backspace=indent,eol,start " Fix backspace indent

" tab, indent
set expandtab
set tabstop=4
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

" Searching
set hlsearch
highlight Search ctermbg=lightgreen
highlight Search ctermfg=black
set incsearch
set ignorecase
set smartcase

" File dealing
set confirm
set hidden
set autoread
set nobackup
set noswapfile

" Ignore these directories for file searching
set wildignore+=*/node_modules/*,*/dist/*,*.o

" Disable highlights for the linter.
let g:ale_set_highlights = 0

"*************
" KeyMapping
"*************
inoremap jj <ESC>
nnoremap <Esc><Esc> :nohlsearch<CR><Esc>
nnoremap <C-n> gt
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap T<Space> tabe<Space>
cnoremap nnn NERDTree<CR>
command! Ctags !ctags -R .
