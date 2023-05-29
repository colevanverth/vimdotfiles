let mapleader = " "

" Netrw file explorer
nnoremap <leader>e :Vexplore<CR> " Opens netrw file explorer

" Essential rebinds
nnoremap // :nohl<CR> " Resets searchs on slash double tap
nnoremap <leader>u ~ " Toggles case
nnoremap <leader>cq ci " C in quotes
nnoremap <leader>cb ci " C in curly brackets

" Search and replace
nnoremap <S-S> :%s//g<Left><Left>

" Windows movements
nnoremap <leader>j <C-w>v " Split window vertically
nnoremap <leader>h <C-w>h " Moves to left pane
noremap <leader>l <C-w>l " Moves to right pane
nnoremap <leader>q :q<CR> " Deletes the current window
nnoremap <leader>w :w<CR> " Saves the window

" Tabs
nnoremap <leader>d :tabnew<CR> " Opens new tab
nnoremap <leader>s :tabn<CR>" Go to next tab
nnoremap <leader>a :tabp<CR> " Go to previous tab

" Telescope
nnoremap <leader>gf <cmd>Telescope find_files<cr> " Find files within current working directory, respects .gitignore

" Numbers
set relativenumber 
set number

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tabs & Indentation
set tabstop=3
set shiftwidth=3
set expandtab 
set autoindent 

" Line Wrapping
set textwidth=80
set wrapmargin=0
set formatoptions+=t
set linebreak 

" Appereance
set cursorline
set termguicolors
set background=dark
set splitright

" Backspace
set backspace=indent,eol,start

" Clipboard
set clipboard=unnamedplus

" Word movement
set iskeyword-=-

" Keeps caret aesthetic correct over the network
if &term =~ '^xterm'
  let &t_SI .= "\<Esc>[5 q" " Solid line 
  let &t_EI .= "\<Esc>[2 q" " Solid block
endif

" Plugins
call plug#begin()

" File explorer settings
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

Plug 'SirVer/ultisnips'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'sainnhe/everforest'
Plug 'tpope/vim-commentary'
call plug#end()

" Set colorscheme
colorscheme everforest

" Ultisnips configuration
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
