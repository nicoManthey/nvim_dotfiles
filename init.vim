
set pastetoggle=<F3>            		" F3 = switch paste mode (don't indent when pasting code blocks)
set incsearch                   		" get results while you search
set number								" line numbers on. :set nonumber to deactivate
syntax on

set cursorline							" Enables cursor line position tracking:
highlight clear CursorLine				" Removes the underline causes by enabling cursorline
highlight CursorLineNR ctermbg=grey		" Sets the line numbering to red backgroun

set runtimepath^=~/.config/nvim/ctrlp	" Path of Plugin CtrlP

filetype plugin indent on				" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
"set shiftwidth=4
" On pressing tab, insert 4 spaces
"set expandtab

" Open buffer list, press number of tab to switch to it.
" Or type foo<tab><CR> for fuzzy search.
nnoremap gb :ls<CR>:b<Space>


" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>

" remap split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>




"Change highlight color of matching parantheses
hi MatchParen cterm=NONE,bold gui=NONE,bold  guibg=#eee8d5 guifg=NONE

let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" call neomake#configure#automake('nrwi', 500)
let g:neomake_python_enabled_makers = ['pylint']

call plug#begin()
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'terryma/vim-multiple-cursors'
Plug 'stephpy/vim-yaml'
Plug 'vim-scripts/ctrlp.vim'
call plug#end()


""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""
" To search for in future
""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""




""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""
" Taking notes of vim commands I newly learn
""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""

" :noh
"	Turn off search highlighting until the next search

"Quickly indent multiple lines in vi/vim
"    Enter VISUAL LINE mode by holding [SHIFT] and hitting the “v” key.
"    Use the arrow keys or “j” and “k” to select the lines you want to indent.
"    Hit the “>” character (hold [SHIFT] and hit the “.” key) to indent.

"Insert text into multiple lines at once
"	Press Ctrl + v to enter into visual block mode.
"	Use ↑ / ↓ / j / k to select multiple lines.
"	Press Shift + i and start typing what you want.
"	After you press Esc, the text will be inserted into all the lines you selected.
"	Remember that Ctrl+c is not 100% equivalent to Esc and will not work in this situation!
"	There are slight variations of Shift + i that you can press while in visual block mode:
"	Key	Description
"	c or s	Delete selected block and enter insert mode
"	C	Delete selected lines (from cursor until end) and enter insert mode
"	R	Delete selected lines and enter insert mode
"	A	Append to selected lines, with the column at the end of the first line

"Surround a (word or multiple) words with parantheses
"	Press ciw on a word (cut the word and store in yank-buffer)
"	Press (
"	Press P

"Going to the end of line (one character before the 'new line' symbol)
"	Press g_
"	So, yg_ will yank from cursor to end of line.

"Set local marks (within a file)
"	Press mh to set a mark on the letter h
"	Idea: set marks on the fingers in order of how imortant they are hjkl
"	Then press 'h 'j etc to jump to the marks

"Set global marks (across files)
"	Press mH
"	press 'H to jump to mark

"Copy contents of other file into current file
"	Press :r other_file.py

"Move Cursor to beginning of next function/class 
"	Press {
"	Press }

"Open some file and switch using buffers
"   Press :e some_file.py
"   Press :ls for a list of files open in buffer
"   Prsss :b1 or :b2 to jump to that file
"   Press :bd (buffer delete) to close the current buffer
"   Press :badd to add a file to the buffer in background

"Open splits
"   Press :s[plit] file_name.txt
"   Press :vs[plit] file_name.txt

"Navigate splits
"	Press ctrl w w


"<Leader> key
"	Is mapped to \ by default. See :help leader.
"	Press :let mapleader = "," to assign , to leader.
"	Press :map <Leader>wq<CR> to to map a command 
