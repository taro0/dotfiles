"=== Plugins ===
" vim-plug is distributed as a single Vimscript file.
" All you have to do is to download the file in a directory so that Vim can load it.
" ($ sh -c 'curl -fLo ${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
" Then run :PlugInstall to install plugins.
call plug#begin('~/.vim/plugged')
    " Colorscheme
    Plug 'ayu-theme/ayu-vim'

    " File search
    " Plug 'ctrlpvim/ctrlp.vim'
    " let g:ctrlp_map = "<Leader><C-p>"
    " let g:ctrlp_working_path_mode = 0
    " set wildignore+=*.o,*.swp,*/tmp/*,*/target/*,*/node_modules/*,*/dist/*

    " Linter
    Plug 'dense-analysis/ale'
    highlight clear ALEErrorSign
    highlight clear ALEWarningSign
    let g:ale_set_highlights = 0

    " Window resizing
    Plug 'simeji/winresizer'
    let g:winresizer_vert_resize = 3
call plug#end()

"=== Options ===
" color
set termguicolors
let ayucolor="dark"
colorscheme ayu

" basics
set number
set history=200
set visualbell
set cursorline

" tab, indent
set expandtab
set tabstop=8
set shiftwidth=2
set softtabstop=2

" searching
set ignorecase
set smartcase

" file handling
set confirm
set noswapfile

" yank to clipboard
" Install xclip package with the following setting.
set clipboard+=unnamedplus

"=== Key mappings ===
let mapleader=" "
inoremap jj <ESC>
nnoremap <Esc><Esc> :nohlsearch<CR><Esc>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-n> gt
nnoremap <C-p> gT
nnoremap <Leader>t :tabnew<CR>
nnoremap <Leader>c :tabclose<CR>

"=== Netrw settings ===
" Toggle left explorer.
nnoremap <Leader>n :Le<CR>

" Enable moving to left window with Ctrl-l from netrw window.
augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
augroup END

function! NetrwMapping()
  nnoremap <buffer> <C-l> :wincmd l<CR>
endfunction
