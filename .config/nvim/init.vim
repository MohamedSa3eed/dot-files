syntax on
set nocompatible
set shortmess+=I
set number
"set cmdheight =2 
"set colorcolumn=80
set scrolloff=8 
set relativenumber
"set laststatus=2
set backspace=indent,eol,start
set hidden
set ignorecase
set smartcase
set hlsearch
set incsearch
set nohlsearch
"set clipboard=unnamedplus

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. 
set mouse+=a

" Do this in normal mode...
"nnoremap <Left>  :echoe "Use h"<CR>
"nnoremap <Right> :echoe "Use l"<CR>
"nnoremap <Up>    :echoe "Use k"<CR>
"nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
"inoremap <Left>  <ESC>:echoe "Use h"<CR>
"inoremap <Right> <ESC>:echoe "Use l"<CR>
"inoremap <Up>    <ESC>:echoe "Use k"<CR>
"inoremap <Down>  <ESC>:echoe "Use j"<CR>

"simple splits resizing 
noremap <silent> <C-Right> :vertical resize +3<CR> 
noremap <silent> <C-Left> :vertical resize -3<CR> 
noremap <silent> <C-Up> :resize +3<CR> 
noremap <silent> <C-Down> :resize -3<CR> 

"plugins 

if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif
    
call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'} "auto completion tool
Plug 'scrooloose/nerdtree' "Tree navigator
Plug 'https://github.com/kien/ctrlp.vim' "fuzzy finder 
"Plug 'tsony-tsonev/nerdtree-git-plugi' "color for tree
"Plug 'Xuyuanp/nerdtree-git-plugin' "icons for tree
Plug 'scrooloose/nerdcommenter' "samrt commenter 
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'gruvbox-community/gruvbox' " my favorite colorscheme
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
"Plug 'flazz/vim-colorschemes'
Plug 'christoomey/vim-tmux-navigator' " allows simple navigation
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'tjdevries/coc-zsh'
Plug 'https://github.com/chrisbra/Colorizer' "color the hex
"Plug 'rrethy/vim-hexokinase',  {'do' : 'make hexokinase' }
Plug 'https://github.com/preservim/tagbar' "tagbar
Plug 'https://github.com/vim-airline/vim-airline' " cool line for vim 
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/glepnir/dashboard-nvim' "Dashboard
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' } "bufferline to show opened buffers 
Plug 'https://github.com/tpope/vim-surround' "surrounds 
call plug#end()

"comminting 
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

"tree
nmap <C-t> :NERDTreeToggle<CR>
let g:NERDTreeIgnore = ['^node_modules$']
" sync open file with NERDTree
" Check if NERDTree is open or active
function! IsNERDTreeOpen()        
	  return exists("t:NERDTreeBufName") &&(bufwinnr(t:NERDTreeBufName) != -1)
  endfunction
  
 " Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
  " file, and we'"re not in vimdiff
  function! SyncTree()
    if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
        NERDTreeFind
        wincmd p
     endif
     endfunction
 
" Highlight currently open buffer in NERDTree
 autocmd BufRead * call SyncTree()

"scheme 
"ex : let g:gruvbox_(option) = '(value)'
colorscheme darkblue
colorscheme gruvbox 
let g:gruvbox_bold = '1'
let g:gruvbox_contrast_dark = 'soft'
let g:gruvbox_transparent_bg = '0'

"coc config 
"for snippets congig use :CocCommand snippets.editSnippets 
"
let g:coc_global_extensions = [
    \ 'coc-snippets' , 
    \ 'coc-pairs' ,
    \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
    \'coc-omnisharp',
    \]
nmap <silent> gd <Plug>(coc-definition)
nmap <F2> <Plug>(coc-rename)
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
	  if (index(['vim','help'], &filetype) >= 0)
       execute 'h '.expand('<cword>')
    else
       call CocAction('doHover')
    endif
 endfunction
 "" Use tab for trigger completion with characters ahead and navigate.
 " " Use command ':verbose imap <tab>' to make sure tab is not mapped by other
  "plugin.
  "inoremap <silent><expr> <TAB>
	"\ pumvisible() ? "\<C-n>" :
	      "\ <SID>check_back_space() ? "\<TAB>" :
		    "\ coc#refresh()
		    "inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
 
		    "function! s:check_back_space() abort
		      "let col = col('.') - 1
			"return !col || getline('.')[col - 1]  =~# '\s'
			"endfunction
			
 "<c-space> to trigger completion.
"inoremap <silent><expr> <c-space> coc#refresh()
  inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
    inoremap <silent><expr> <C-x><C-z> coc#pum#visible() ? coc#pum#stop() : "\<C-x>\<C-z>"
    " remap for complete to use tab and <cr>
    inoremap <silent><expr> <TAB>
        \ coc#pum#visible() ? coc#pum#next(1):
        \ <SID>check_back_space() ? "\<Tab>" :
        \ coc#refresh()
    inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
    inoremap <silent><expr> <c-space> coc#refresh()

    "hi CocSearch ctermfg=12 guifg=#18A3FF
    "hi CocMenuSel ctermbg=109 guibg=#13354A

"tagbar 
nmap <F8> :TagbarToggle<CR> 
"set g:tagbar_ctags_bin 

"colors 
"let g:Hexokinase_highlighters = [ 'background' ]

"bufferline 
set termguicolors
lua << EOF
require("bufferline").setup{
   options = {
	   	mode = "buffers",
		numbers = "ordinal",
		offsets = {{
	       	filetype = "nerdtree" ,
		text = "File Expolrer" ,
		text_align = "left",
		separator = true ,
	        }
	},
	        separator_style = "thick",
	     }	
 }
EOF
noremap <silent> <C-n> :bn<CR>
noremap <silent> <C-p> :bp<CR>

"ctrl-p (fzf)
let g:ctrlp_map = '<c-x>'


let g:airline_theme='base16_gruvbox_dark_hard'
"let g:airline#extensions#tabline#enabled = 5
"let g:airline#extensions#tabline#formatter = 'unique_tail'
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
 
