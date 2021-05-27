""""""""""""""""""""
"" Plug
""""""""""""""""""""

call plug#begin()

Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Plug 'Valloric/YouCompleteMe',
Plug 'rust-lang/rust.vim'
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'rhysd/vim-clang-format'
Plug 'tomasr/molokai'                       " Colorscheme
Plug 'morhetz/gruvbox'                      " Colorscheme
Plug 'tpope/vim-commentary'                 " gc(c) to comment out/in
Plug 'tpope/vim-endwise'                     " Auto-end structures
Plug 'vim-airline/vim-airline'              " Pretty statusline
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'               " Git lines added/removed
Plug 'vim-scripts/CSApprox'                 " Fix terminal colorschemes
"Plug 'bronson/vim-trailing-whitespace'      " Highlight trailing whitespace
Plug 'Raimondi/delimitMate'                 " Match ([{ etc
Plug 'Yggdroot/indentLine'                  " Mark indent levels
Plug 'vim-scripts/DoxygenToolkit.vim'       " Add :Dox command
Plug 'w0rp/ale'                             " Asynchronous Lint Engine
Plug 'elmcast/elm-vim'                      " Elm support
" Plug 'sheerun/vim-polyglot'                 " Language support
" Plug 'slashmili/alchemist.vim'              " Elixir autocomplete
" Plug 'pangloss/vim-javascript'              " Javascript bundle
" Plug 'sukima/xmledit'                       " Markup tag matching
" filetype plugin on
" Plug 'ludovicchabant/vim-gutentags'         " Painfree tags
" Plug 'tpope/vim-projectionist'              " Dependency for phoenix.vim
" Plug 'c-brenn/phoenix.vim'                  " Phoenix project navigation


Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp', 'h', 'hpp']}

call plug#end()

""""""""""""""""""""
"" Plug config
""""""""""""""""""""
let g:ale_lint_on_text_changed = 'never'      " Lint on save and open only
let g:elm_setup_keybindings = 0
let g:elm_format_autosave = 1
" let g:polyglot_disabled = ['elm']
let g:airline#extension#ale#enabled = 1
let g:clang_library_path='~/.config/nvim/plugged/YouCompleteMe/third_party/ycmd/third_party/clang/lib/libclang.so.7'
let g:clang_format#auto_format = 1
let g:clang_format#command = 'clang-format-7'
let g:ycm_use_clangd = "Never"

""""""""""""""""""""
"" Basic setup
""""""""""""""""""""

filetype plugin indent on
syntax on

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Indent and place between braces
inoremap {<CR> {<CR>}<Esc>O<BS><Tab>
inoremap [<CR> [<CR>]<Esc>O<BS><Tab>
inoremap @doc<CR> @doc """<esc>o"""<esc>O
noremap <Leader>f :Files<CR>
noremap <Leader>b :Buffers<CR>
" Disable Arrow keys in Escape mode
 map <up> <nop>
 map <down> <nop>
 map <left> <nop>
 map <right> <nop>

 " Disable Arrow keys in Insert mode
 imap <up> <nop>
 imap <down> <nop>
 imap <left> <nop>
 imap <right> <nop>

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-H> <C-W>h<C-W>_
map <C-L> <C-W>l<C-W>_

" Encoding
set encoding=utf-8                          " Inside editor
set fileencoding=utf-8                      " In buffer
set fileencodings=ut-8                      " Opening files

" Tabs
set tabstop=4
set shiftwidth=4
set expandtab
set ttimeout
set ttimeoutlen=0

" Commands
command HH vsplit
command VV split

autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype python setlocal ts=2 sw=2 expandtab
autocmd Filetype rust setlocal ts=4 sw=4 expandtab
autocmd FileType c ClangFormatAutoEnable

" Editing
set noswapfile
set showcmd
set undolevels=1001

" EOF formats
set fileformat=unix                         " Default
set ffs=unix,dos,mac                        " Test for these

" Backspace behavior
set backspace=indent,eol,start

" Searches
set hlsearch
set smartcase
set ignorecase
set incsearch

"""""""""""""""""""
"" Visual setup
"""""""""""""""""""

" Colorscheme
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_invert_selection = '0'
colorscheme gruvbox
set background=dark

" Environment
set number
set relativenumber
set ruler                                   " Show cursor position
set showmatch                               " Matching braces
set scrolloff=3                             " Show 3 lines above/below

" Statusline
set laststatus=2
set statusline=%m%r%F%=%Y\ (line\ %l\/%L\ col\ %c)

let g:python_highlight_space_errors = '0'
" Vim-airline
let g:airline_theme = 'angr'
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = '>'
let g:airline_right_sep = ''
let g:airline_right_alt_sep = '<'
let g:airline_symbols.branch = 'B'
let g:airline_symbols.readonly = 'RO'
let g:airline_symbols.crypt = 'C'
let g:airline_symbols.linenr = 'Line'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.paste = 'P'
let g:airline_symbols.spell = 'S'
let g:airline_symbols.notexists = 'x'
let g:airline_symbols.whitespace = ' '
