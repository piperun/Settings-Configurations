set number
set noswapfile
set smartcase

set splitright
set splitbelow

"Indent
set autoindent
set copyindent

set termguicolors

colorscheme lucid

" Turn off statusbar, because it is externalized
set noshowmode
set noruler
set laststatus=0
set noshowcmd

" Enable GUI mouse behavior
"set mouse=a

" All config settings after this point
" can be removed, once an Oni config option is added.

" Use ESC to exit insert mode in :term
tnoremap <Esc> <C-\><C-n>

" Default tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab


let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-d>'
let g:multi_cursor_select_all_word_key = '<A-d>'
let g:multi_cursor_start_key           = 'g<C-d>'
let g:multi_cursor_select_all_key      = 'g<A-d>'
let g:multi_cursor_next_key            = '<C-d>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'



call plug#begin('~/.local/share/nvim/plugged')
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

Plug 'chase/vim-ansible-yaml', {'branch': 'master'}
Plug 'terryma/vim-multiple-cursors', {'branch': 'master'}


" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()

