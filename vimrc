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
	set background=dark
endif
set t_Co=16
let g:solarized_termcolors=16
colorscheme solarized

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
