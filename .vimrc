"
set nocompatible

"
filetype indent plugin on

" Enable syntax highlighting
syntax on

set laststatus=2			" Always show the statusline
set encoding=utf-8			" unicode glyphs powerline
set t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'sukima/xmledit'
Plugin 'Valloric/MatchTagAlways'

" MatchTagAlways
let g:mta_filetypes = {
			\ 'html' : 1,
			\ 'eruby' : 1,
			\ 'xhtml' : 1,
			\ 'xml' : 1,
			\ 'jinja' : 1,
			\ 'php' : 1,
			\}

" All of your Plugins must be added before the following line
call vundle#end()            " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"
" Key Mappings
"
" Insert mode map jk to Esc 
inoremap jk <ESC>
" Visual mode map ctrl+c to copy to clipboard
xnoremap <C-c> "+y
" Normal mode map ctrl+v to paste from clipboard
nnoremap <C-v> "+p
" up and down arrow keys to up/down disregard scrolled lines
map <silent> <Up> gk
map <silent> <Down> gj
map <C-n> :NERDTreeToggle<CR>


set number " Show line number
set exrc
set secure
syntax enable
set tabstop=4     " a tab is four spaces
set softtabstop=4
set shiftwidth=4
set noexpandtab
set background=dark
set backup
set backupdir=~/.vimtmp,.
set directory=~/.vimtmp,.
set mouse=a
set clipboard=unnamed
set hlsearch
set breakindent

" Line marking column 110
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:airline_powerline_fonts = 1
" Enable the list of buffers
 let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let @/ = ""
let g:NERDTreeWinSize=15

" open NERDTree if vim starts with no files
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" to end vim if only NERDTree window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Line numbers
highlight LineNr ctermfg=236
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=238 guibg=NONE guifg=NONE
