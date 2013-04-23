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
