set nocompatible
syntax on
set shortmess+=I
set number
set cmdheight =2 
set colorcolumn=80
set scrolloff=8 
set relativenumber
set laststatus=2
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

"plugins 

if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif
    
call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'scrooloose/nerdtree'
Plug 'tsony-tsonev/nerdtree-git-plugi' "color for tree
Plug 'Xuyuanp/nerdtree-git-plugin' "icons for tree
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'gruvbox-community/gruvbox'
Plug 'christoomey/vim-tmux-navigator'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'tjdevries/coc-zsh'
Plug 'https://github.com/chrisbra/Colorizer' "color the hex
Plug 'rrethy/vim-hexokinase',  {'do' : 'make hexokinase' }
call plug#end()

"comminting 
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

"tree
nmap <C-n> :NERDTreeToggle<CR>
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
let g:gruvbox_transparent_bg = '1'

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
"nmap <silent> gd <Plug>(coc-definition)
"nmap <F2> <Plug>(coc-rename)
"nnoremap <silent> K :call <SID>show_documentation()<CR>
"function! s:show_documentation()
	  "if (index(['vim','help'], &filetype) >= 0)
       "execute 'h '.expand('<cword>')
    "else
       "call CocAction('doHover')
    "endif
 "endfunction
 "" Use tab for trigger completion with characters ahead and navigate.
 " " Use command ':verbose imap <tab>' to make sure tab is not mapped by other
 " plugin.
  "inoremap <silent><expr> <TAB>
        "\ pumvisible() ? "\<C-n>" :
              "\ <SID>check_back_space() ? "\<TAB>" :
                    "\ coc#refresh()
                    "inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
 
                    "function! s:check_back_space() abort
                      "let col = col('.') - 1
                        "return !col || getline('.')[col - 1]  =~# '\s'
                        "endfunction
			
" <c-space> to trigger completion.
"inoremap <silent><expr> <c-space> coc#refresh()

"colors 
"let g:Hexokinase_highlighters = [ 'background' ]
