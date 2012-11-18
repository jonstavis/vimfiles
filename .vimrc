set nocompatible

" Leader
let mapleader = ","

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]
set laststatus=2
set showcmd

nmap <leader>c :call Cursors()<CR>

function! Cursors()
  set cursorline!
  set cursorcolumn!
endfunction

set number
nnoremap <leader>n :set nonumber!<CR>

syntax on

" Whitespace stuff
set nowrap
nnoremap <leader>w :set wrap!<CR>
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set listchars=tab:▸\ ,eol:¶,trail:·,extends:¬
set smartindent
set autoindent
filetype indent on
nmap <leader>l :set list!<CR>
			
set encoding=utf-8

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Writing
" set clipboard+=unnamed    " yank to system clipboard

" Filename Tab completion 
set wildmode=list:longest,list:full
set wildmenu

" File navigation
" trying to decide between NERDTree and FuzzyFinder
nmap <leader>ff :FufFile **/<CR>
nmap <leader>fb :FufBuffer<CR>
map <Leader>r :NERDTreeToggle<CR>  

" auto source 
" au BufWritePost .vimrc so ~/.vimrc

" list and choose buffers easily 
nmap <leader>b :ls<CR>:buffer<Space>

noremap <S-up> :e ~/.vimrc<CR>
noremap <S-down> :source ~/.vimrc<CR> :b#<CR>

" select all
map <Leader>a ggVG

" folding
map <Leader>fi :set foldmethod=indent<CR>
map <Leader>fs :set foldmethod=syntax<CR>


" tab navigation
map <D-S-]> gt
map <D-S-[> gT

" remove toolbar on macvim gui
if has("gui_running")
  set guioptions-=T
  colorscheme zellner 
  " set autochdir "this is annoying
endif


" remap : to space
nnoremap <space> :

" Use double-<space> to save the file
nnoremap <space><space> :w<cr>

" Use double-leader to jump to last file
nnoremap <leader><leader> <c-^>

" exuberant ctags
set tags=~/.vim/mytags/php-webapi
"nnoremap <silent> <leader>t :<C-u>silent !php-webapi-tags.sh<CR><CR> 
map <leader>tg :!php-webapi-tags.sh<CR> 

let Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8/bin/ctags'
map <leader>fl :TlistToggle<CR>

" remap tab completion to command space
inoremap <c-space> <c-n>

