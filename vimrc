" This must be first, because it changes other options as side effect
set nocompatible
"call pathogen#runtime_append_all_bundles()
call pathogen#incubate()
call pathogen#helptags()
execute pathogen#infect()


filetype plugin indent on
filetype indent plugin on

syntax enable
if has('gui_running')
    set background=dark
else
    set background=light
endif
set t_Co=16
let g:solarized_termcolors=16
colorscheme solarized


"http://stackoverflow.com/questions/880668/how-to-avoid-indentation-error-after-changing-tab-stops-in-vim
set tabstop=4
set shiftwidth=4
set expandtab


"easyMotion Plugin for VIM's leader key configuration.
let g:EasyMotion_leader_key = '\'

"NERDTree plugin configuration.

"open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree
"open a NERDTree automatically when vim starts up if no files were specified
autocmd vimenter * if !argc() | NERDTree | endif
"map a specific key or shortcut to open NERDTree
map <C-n> :NERDTreeToggle<CR>
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"cursor always starts in the NERDTree window
"http://stackoverflow.com/questions/1447334/how-do-you-add-nerdtree-to-your-vimrc
autocmd VimEnter * wincmd p
"Easy window navigation, Just use CTRL + hjkl for navigation inplace of CTRL + W
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"http://stackoverflow.com/questions/2441795/becoming-better-at-vim
"Disable arrow key in Command Mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
"Disable arrow key in insert mode.
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
"http://vimbits.com/bits/139
"for making this work in Macvim
set macmeta

"http://vim.wikia.com/wiki/Moving_lines_up_or_down
"In normal mode or in insert mode, press Alt-j to move the current line down, 
"or press Alt-k to move the current line up. 
"After visually selecting a block of lines (for example, by pressing V then moving the cursor down), 
"press Alt-j to move the whole block down, or press Alt-k to move the block up. 

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"http://vimbits.com/bits/13
"80-character line coloring 
if exists('+colorcolumn')
    set colorcolumn=80
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

"http://vimbits.com/bits/169
"When opening a file, always jump to the last cursor position 
autocmd BufReadPost *
            \ if line("'\"") > 0 && line ("'\"") <= line("$") |
            \ exe "normal g'\"" |
            \ endif

"http://vimbits.com/bits/312
"highlight the current line/column, except when reading 
set cursorline cursorcolumn " highlight the current line/column
" f12 to toggle line/column highlighting
noremap <silent><f12> :set cursorline! cursorcolumn!<cr>

"http://vimbits.com/bits/397
"move cursor when insert mode 
imap <C-h> <C-o>h
imap <C-j> <C-o>j
imap <C-k> <C-o>k
imap <C-l> <C-o>l
