" This must be first, because it changes other options as side effect
set nocompatible
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

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

"easyMotion Plugin for VIM's leader key configuration.
let g:EasyMotion_leader_key = '\'
