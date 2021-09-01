" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'lilydjwg/colorizer'
Plug 'OmniSharp/omnisharp-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Sirver/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdtree'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ryanoasis/vim-devicons'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
Plug 'ap/vim-css-color'
Plug 'puremourning/vimspector'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'iamcco/markdown-preview.nvim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

syntax on
colo nord

set number
set relativenumber

let mapleader = " "

map <c-j> :cn<Cr>
map <c-k> :cp<Cr>

inoremap <expr> <Tab>	pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:NERDTreeShowHidden=1
nnoremap <Del> :NERDTreeToggle<Cr>

" Tabline

let g:airline#extensions#tabline#enabled = 1

" Vimspector
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'

" FZF
nmap <Leader><Tab> <Plug>(fzf-maps-n)
nmap <Leader>p :Files<Cr>

" MarkDown
let g:mkdp_auto_start=1
let g:mkdp_auto_close=1

nmap <C-p> <Plug>MarkdownPreviewToggle
