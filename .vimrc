" Use UTF-8
set encoding=utf-8

" Line numbers
set number

" Better searching
set ignorecase
set smartcase
set incsearch
set hlsearch

" Indentation
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Scrolling & cursor
set scrolloff=8
set sidescrolloff=8

" Undo history (even after closing files)
set undofile

" Faster updates
set updatetime=300
set timeoutlen=500

" Enable mouse (optional but useful)
set mouse=a

" System clipboard
set clipboard=unnamedplus

" No annoying backups
set nobackup
set nowritebackup
set noswapfile

" Better splits
set splitbelow
set splitright

" Use tab for completion
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#confirm() :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Go to definition
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> K  :call CocActionAsync('doHover')<CR>

" Completion menu colors
highlight Pmenu ctermbg=235 ctermfg=252
highlight PmenuSel ctermbg=61 ctermfg=231
highlight PmenuSbar ctermbg=240
highlight PmenuThumb ctermbg=252

" Coc-specific
highlight CocMenuSel ctermbg=61 ctermfg=231

call plug#begin('~/.vim/plugged')

" File explorer
Plug 'preservim/nerdtree'

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Git integration
Plug 'tpope/vim-fugitive'

" Commenting
Plug 'tpope/vim-commentary'

" Surround text objects
Plug 'tpope/vim-surround'

" Syntax highlighting
Plug 'sheerun/vim-polyglot'

" IDE like features
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
