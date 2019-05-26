set nocompatible
filetype off


"================================= 
" PLUGINS
" =================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Dracula theme
Plugin 'dracula/vim'

" Gruvbox theme
Plugin 'morhetz/gruvbox'

" C++ syntax
Plugin 'octol/vim-cpp-enhanced-highlight'

" YouCompleteMe
"Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required


"================================= 
"" SYNTAX AND COLOR SCHEME
"================================ 

" Turn on syntax highlighting.
syntax on

" palette of colors 
set termguicolors
"set t_Co=256

"syntax cpp
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_class_scope_highlight = 1

"hi Normal guibg=NONE ctermbg=NONE " for transparent background.

"color scheme
"let g:dracula_colorterm = 0 " for transparent background in dracula
colorscheme dracula

"colorscheme monokai

"let g:gruvbox_italic=1
"set background=dark    " Setting dark mode
"colorscheme gruvbox


"================================= 
" PARAGRAPH SETTINGS
"=================================

" Automatically wrap text that extends beyond the screen length.
set wrap

" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Speed up scrolling in Vim
set ttyfast

" Status bar
set laststatus=2

" Display options
set showmode
set showcmd " shows the last command entered in the bottom right.
set cursorline " highlight current line
set showmatch " to highlight the match of parenthesis.

" Show line numbers
set number
set relativenumber

" Set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Encoding
set encoding=utf-8

" Visual autocomplete
set wildmenu

" Autoindent
set autoindent

" Searching
set incsearch
set hlsearch

"=================================
" KEYBOARD MAPPINGS
"=================================
"For proper tabbing and bracket insertion"
inoremap {<cr> {<cr>}<c-o><s-o>
inoremap [<cr> [<cr>]<c-o><s-o>
inoremap (<cr> (<cr>)<c-o><s-o>

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
