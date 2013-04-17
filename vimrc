" This must be first, because it changes other options as side effect
set nocompatible


execute pathogen#infect()
filetype plugin indent on

syntax enable
if has('gui_running')
	set background=dark
else
	set background=dark
endif
set t_Co=16
let g:solarized_termcolors=16
colorscheme solarized
