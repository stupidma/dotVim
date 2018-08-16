" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" http://vimawesome.com/plugin/easymotion -- quick move hotkey'\\w'
Plug 'easymotion/vim-easymotion'

" http://vimawesome.com/plugin/nerdtree-red -- files tree
Plug 'scrooloose/nerdtree'

" http://vimawesome.com/plugin/fzf -- files search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" http://vimawesome.com/plugin/youcompleteme
"Plug 'valloric/youcompleteme'

" https://github.com/w0rp/ale -- code check
"Plug 'w0rp/ale'

"http://vimawesome.com/plugin/molokai -- theme
Plug 'tomasr/molokai'

" http://vimawesome.com/plugin/vim-colorschemes-sweeter-than-fiction -- theme
Plug 'flazz/vim-colorschemes'

" https://github.com/godlygeek/tabular -- 代码排版
Plug 'godlygeek/tabular'

" https://github.com/xolox/vim-misc -- for vim-lua-ftplugin base
Plug 'xolox/vim-misc'

" https://github.com/xolox/vim-lua-ftplugin
Plug 'xolox/vim-lua-ftplugin'

" https://github.com/terryma/vim-smooth-scroll
Plug 'terryma/vim-smooth-scroll'

" https://github.com/takac/vim-hardtime
Plug 'takac/vim-hardtime'

" https://github.com/ctrlpvim/ctrlp.vim 
Plug 'ctrlpvim/ctrlp.vim'
" Ctrl+P

" https://github.com/brookhong/cscope.vim
"Plug 'brookhong/cscope.vim'

" github.com/jeffkreeftmeijer/vim-numbertoggle
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" https://github.com/fatih/vim-go
Plug 'fatih/vim-go'

" https://github.com/majutsushi/tagbar
Plug 'majutsushi/tagbar'


" https://github.com/vim-syntastic/syntastic
Plug 'scrooloose/syntastic'

" Initialize plugin system
call plug#end()


map <C-m> :NERDTreeToggle<CR>

"colorscheme monokai
colorscheme onedark
set hlsearch
set number
set tabstop=4
set shiftwidth=4
syntax on
filetype on
"set noautoindent
set showmatch
set vb t_vb=
"set guifont=Iosevka:h14
set guifont=Inziu\ Iosevka\ SC:h13
set autowrite

" lua file type plug-in
let g:lua_check_syntax = 0

" NERDTree plug setting
" open NerdTree automatically when vim starts up
"autocmd vimenter * NERDTree 

" open NerdTree automatically when vim starts up if no files were specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" open NerdTree automatically when vim starts up on opening a directory
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" close vim if the only window left open is a NerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" vim-smooth-scroll 平滑滚动
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" hardtime 禁止连续使用h\j\k\l等键
let g:hardtime_default_on = 0

" fzf setting on MacVim with iTerm2
let g:fzf_launcher="fzfFunc.sh %s"

" ag setting for vim 
"let g:ackprg = 'ag --nogroup --nocolor --column'


" cscove(new cscope) setting
nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>

set noeb
set vb

let &termencoding=&encoding
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
