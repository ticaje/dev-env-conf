" VIM Configuration - Hector Luis Barrientos Margolles 
" Cancel the compatibility with Vi. Essential if you want
" to enjoy the features of Vim
set nocompatible

" Activate pathogen
call pathogen#infect()

" -- Display
set title 		"Update the title of your window or your terminal
set number 		"Display line numbers
set ruler 		"Display cursor position
set wrap 		"Wrap lines when they are too long

set scrolloff=3 	" Display at least 3 lines around you cursor
			" (for scrolling)
set guioptions=T 	" Enable the toolbar
		 	" -- Search
set ignorecase		"Ignore case when searching
"
set smartcase		"If there is an uppercase in your search term
			"search case sensitive again
set incsearch		"Highlight search results when typing
set hlsearch 		"Highlight search results

" -- Beep
set visualbell		" Prevent Vim from beeping
set noerrorbells 	" Prevent Vim from beeping

" Backspace behaves as expected
set backspace=indent,eol,start

" Hide buffer (file) instead of abandoning when switching
" to another buffer
set hidden

" Enable syntax highlighting
syntax enable
" Enable file specific behavior like syntax highlighting and indentation
filetype on

filetype plugin on
filetype indent on

" Setting up indentation
set expandtab ts=4 sw=4 ai

set guifont=DejaVu\ Sans\ Mono\ 12
set antialias

" Remapping esc key
:imap ii <Esc>

let mapleader = ","

" Default params for ack
let g:ackprg="ack -H --nocolor --nogroup --column"
" Add a mark and search
nmap <leader>j mA:Ack<space>
" Add a mark and search for the word under the cursor
nmap <leader>ja mA:Ack "<C-r>=expand("<cword>")<cr>"
nmap <leader>jA mA:Ack "<C-r>=expand("<cWORD>")<cr>"


let g:ctrlp_map = '<leader>c'

set autochdir

" check PHP syntax
map :aa :!php -l %<CR>
