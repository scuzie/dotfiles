call plug#begin(expand('~/.config/nvim/plugged'))

" intellisense engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" color theme
Plug 'gosukiwi/vim-atom-dark'

" file tree
Plug 'preservim/nerdtree'

" lightweight statusline
Plug 'itchyny/lightline.vim'

" fuzzy-finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" editorconfig
Plug 'editorconfig/editorconfig-vim'

" comments
Plug 'preservim/nerdcommenter'

call plug#end()

" ignore c/c++ object files
set wildignore+=*.o,*.obj,*.out,*.elf,*.exe,*.app

" ignore python files
set wildignore+=*/__pycache__/*,*.pyc

" theme
set background=dark
colorscheme atom-dark-256

" shell
set shell=/usr/bin/zsh

" ---- options ----

syntax enable
filetype indent on

filetype plugin on
filetype plugin indent on

set autochdir
set nobackup
set noswapfile
set nowb
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set viminfo
set shortmess+=c
set updatetime=300
set termguicolors
set hidden
set laststatus=2
set lazyredraw
set nowritebackup
set noerrorbells
set noshowmode
set novisualbell
set number
set display+=lastline
set ruler
set wildmenu
set cindent
set autoindent
set backspace=indent,eol,start
set cursorline
set expandtab
set foldcolumn=1
set clipboard=unnamedplus
set foldenable
set foldlevelstart=10
set linebreak
set listchars=eol:¬,space:·,tab:»\
set magic
set cmdheight=2
set mat=2
set shiftwidth=4
set showmatch
set signcolumn=yes
set smartindent
set smarttab
set softtabstop=0
set tabstop=4
set whichwrap+=<,>,h,l,[,]
set wrap
set ignorecase
set smartcase
set hlsearch
set undofile
set incsearch
set gdefault
set nojoinspaces
set autoread
set ttimeout 
set ttimeoutlen=100
set nowrap

" store an undo buffer
set undofile
set undodir=~/.config/nvim/.vimundo
set undolevels=1000
set undoreload=10000

" disable terminal bell
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" fix yaml indentation issues
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" disable comment insertion on next line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" clipboard integration
noremap <leader>p :read !xsel --clipboard --output<CR>
noremap <leader>c :w !xsel -ib<CR>

" ---- plugin settings ----

" statusline
let g:lightline = {
      \ 'colorscheme': 'material',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status',
      \ },
      \ }

" file tree 
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeShowHidden=1

" completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" documentation
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" formatting
augroup mygroup
  autocmd!
  autocmd FileType json,yaml,toml,rust,c,go,elixir,python setl formatexpr=CocAction('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
augroup end

" comments
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

" ---- key bindings ----

let g:mapleader="\<Space>"

" unbind Ex mode
noremap Q <nop>

" unbind help menues
noremap <F1> <nop>
noremap <S-k> <nop>

" toggle file tree
map <C-n> :NERDTreeToggle<CR>

" ctrl-backspace to delete last word
imap <C-BS> <C-W>

" c-space to trigger completion 
inoremap <silent><expr> <c-space> coc#refresh()

" use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

" highlights the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" apply suggested fix on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" add `:Format` command to format current buffer
command! -nargs=0 Format :call CocAction('format')
