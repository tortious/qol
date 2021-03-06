set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" Vim guttere: A Vim plugin which shows a git diff in the 'gutter' (sign column).
Plugin 'airblade/vim-gitgutter'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Porting of the monomak theme for vim
Plugin 'molokai'

" Autocomplete engine, might require additional config
Plugin 'valloric/youcompleteme'

" Plugin to surround text
Plugin 'tpope/vim-surround'

" File explorer
Plugin 'scrooloose/nerdtree'

" To comment stuff (default leader key is '\')
Plugin 'scrooloose/nerdcommenter'

" Status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Another color theme
Plugin 'nanotech/jellybeans.vim'

"Plugin 'sickill/vim-monokai'

Plugin 'crusoexia/vim-monokai'

" Search any file
Plugin 'kien/ctrlp.vim'

" Show buffers at the bottom of the screen
Plugin 'bling/vim-bufferline'

" Use multiple cursors
Plugin 'terryma/vim-multiple-cursors'

" Bookmarks
Plugin 'MattesGroeger/vim-bookmarks'

" Smart code folding for python
Plugin 'tmhedberg/SimpylFold'

" Tagbar
Plugin 'majutsushi/tagbar'

" PEP8 checker
Plugin 'nvie/vim-flake8'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
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

" Use molokai color scheme for the editor
"colorscheme molokai
colorscheme monokai

" Use molokai theme for the airline
let g:airline_theme='powerlineish'
" Also uses powerline fonts
let g:airline_powerline_fonts = 1

" YCM: autoclose docs window after insertion/completion
" let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

"let g:bufferline_active_buffer_left = '['
"let g:bufferline_active_buffer_right = ']'

" Open NERDTree when vim starts
"autocmd vimenter * NERDTree

" Open NERDTree when a folder is opened
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" Highlight active buffer
autocmd VimEnter * let g:bufferline_active_buffer_left = '['
autocmd VimEnter * let g:bufferline_active_buffer_right = ']'

set nofoldenable

" Forces text wrapping at 80 characters
set textwidth=80

" Two mappings for easy tab navigation
nnoremap tt  :tabedit<Space>
nnoremap td  :tabclose<CR>

set updatetime=1000

" Toggle Tagbar
nmap <F8> :TagbarToggle<CR>

