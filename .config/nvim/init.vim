" Looks
set guifont=JetBrains\ Mono
syntax on
set number relativenumber
set cursorline
set nowrap

" Indents
set shiftwidth=4
set tabstop=4
set ai
set si
set noexpandtab

" Turning off backups
set nobackup
set nowb
set noswapfile

" Filetypes
filetype plugin indent on

" Colorscheme
set background=dark
autocmd VimEnter * hi Normal ctermbg=none
colorscheme gruvbox

" History
set history=500

" Use system clipboard
set clipboard=unnamedplus

" vim-plug plugins
call plug#begin('~/.config/nvim/plugged')
	Plug 'preservim/nerdtree'
	Plug 'preservim/nerdcommenter'
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
	"Plug 'neovim/nvim-lspconfig'
	"Plug 'hrsh7th/nvim-cmp'
	"Plug 'hrsh7th/cmp-nvim-lsp'
	"Plug 'hrsh7th/cmp-vsnip'
	"Plug 'hrsh7th/vim-vsnip'
	"Plug 'hrsh7th/cmp-path'
	"Plug 'hrsh7th/cmp-buffer'
	"Plug 'saadparwaiz1/cmp_luasnip'
	"Plug 'L3MON4D3/LuaSnip'
	"Plug 'simrat39/rust-tools.nvim'
call plug#end()

" NERDTree
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

