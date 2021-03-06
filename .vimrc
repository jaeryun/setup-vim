call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'wesleyche/SrcExpl'

Plug 'fatih/vim-go'
Plug 'nsf/gocode'

Plug 'junegunn/vim-easy-align'

Plug 'majutsushi/tagbar'

Plug 'preservim/nerdcommenter'

call plug#end()

"------------------------------------------------------------------------"
"	vim setup	"
"------------------------------------------------------------------------"
	set nu			"line number
	set ai			"auto indent
	set ts=4		"tab size
	set bg=dark		"background color
	set smartindent
	set hlsearch
	set cindent		"For c,c++,java
	set tabstop=4
	set expandtab
	set shiftwidth=4 

"------------------------------------------------------------------------"
"	NERD Tree setting
"------------------------------------------------------------------------"
	let NERDTreeWinPos = "left"
	nmap <F7> :NERDTreeToggle<CR>

"------------------------------------------------------------------------"
"	Source Explorer setting
"------------------------------------------------------------------------"
	nmap <F8> :SrcExplToggle<CR>
	nmap <C-H> <C-W>h
	nmap <C-J> <C-W>j
	nmap <C-K> <C-W>k
	nmap <C-L> <C-W>l
	nmap <C-Left> <C-W>h
	nmap <C-Down> <C-W>j
	nmap <C-Up> <C-W>k
	nmap <C-Right> <C-W>l


	let g:SrcExpl_winHeight = 8
	let g:SrcExpl_refreshTime = 100
	let g:SrcExpl_jumpKey = "<ENTER>"
	let g:SrcExpl_gobackKey = "<SPACE>"
	let g:SrcExpl_isUpdateTags = 0

"------------------------------------------------------------------------"
"       Tag List setting
"------------------------------------------------------------------------"
nmap <F9> :TagbarToggle<CR>


"------------------------------------------------------------------------"
"       Tag List setting
"------------------------------------------------------------------------"

nmap <F3>   <Plug>NERDCommenterToggle
vmap <F3>   <Plug>NERDCommenterToggle<CR>gv

"------------------------------------------------------------------------"
"       Others
"------------------------------------------------------------------------"

"set mouse=a
"map <ScrollWheelUp> <C-Y>
"map <ScrollWheelDown> <C-E>

if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif
