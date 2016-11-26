" Plugins
call plug#begin()

Plug 'artur-shaik/vim-javacomplete2'

Plug 'ternjs/tern_for_vim'

Plug 'tpope/vim-ragtag'

Plug 'tikhomirov/vim-glsl'

Plug 'tpope/vim-dispatch'

Plug 'Omnisharp/Omnisharp-vim'

" flappy vird!
Plug 'mattn/flappyvird-vim'

" fish shell highlighting
Plug 'dag/vim-fish'

" a nice color scheme
Plug 'morhetz/gruvbox'

" awesome syntax stuff
Plug 'scrooloose/syntastic'

" file finding
Plug 'ctrlpvim/ctrlp.vim'

" better delimiter differentiation
" broken right now
"Plug 'kien/rainbow_parantheses.vim'

" fancy line at the bottom 
Plug 'vim-airline/vim-airline'

" complete delimiters
Plug 'Raimondi/delimitMate'

" python autocomplete
Plug 'davidhalter/jedi-vim'

" python highlighting
Plug 'hdima/python-syntax'

" awesome autocomplete
Plug 'Valloric/YouCompleteMe'

" make c++ code prettier
Plug 'octol/vim-cpp-enhanced-highlight'

" tab completion
Plug 'ervandew/supertab'

" pretty parens
Plug 'luochen1990/rainbow'

call plug#end()

" enable syntax
syntax enable

" proper tabs
filetype plugin on
filetype indent on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" more natural window split settings
set splitbelow
set splitright

" line numbers and relative line numbers
set number
set relativenumber

" underline the current line
" idk, it's nice
"set cursorline

" easier to reach leader key
let mapleader=","

" better autocompletion for commands
set wildmenu

" show matching delimiters
set showmatch

" highlight matchs in a search
set hlsearch

" make it fancy lookin'
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" colorscheme stuff
colorscheme gruvbox
set background=dark

" stop the annoying ycm confirmation message
let g:ycm_confirm_extra_conf = 0

" remap exit insert mode to something more sensible
inoremap jk <ESC>

" syntastic options
let g:syntastic_cpp_checkers = ['clang++']
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++14'

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" exit terminal mode with escape
tnoremap <Esc> <C-\><C-n>

" terminal mode window navigation
" mapped to left home row + leader key

" nav left
tnoremap <leader>a <C-\><C-n><C-w>h

" nav down
tnoremap <leader>s <C-\><C-n><C-w>j

" nav up
tnoremap <leader>d <C-\><C-n><C-w>k

" nav right
tnoremap <leader>f <C-\><C-n><C-w>l

" normal mode window navigation mapped to
" left home row + leader key
" same bindings as above
nnoremap <leader>a <C-w>h
nnoremap <leader>s <C-w>j
nnoremap <leader>d <C-w>k
nnoremap <leader>f <C-w>l

" window bindings
nnoremap <leader>v :vnew <CR>
nnoremap <leader>h :new <CR>
tnoremap <leader>v <C-\><C-n>:vnew<CR>
tnoremap <leader>h <C-\><C-n>:new<CR>

" quick tabnext
nnoremap <leader>t :tabnext <CR>
" quick tabprevious
nnoremap <leader>r :tabprevious <CR>

let g:Omnisharp_server_type = 'roslyn'

autocmd FileType java setlocal omnifunc=javacomplete#Complete

" remove annoying preview window
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
