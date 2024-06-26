-- Looks
vim.opt.guifont = "JetBrains Mono"
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.wrap = false

-- Indents
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.ai = true
vim.opt.si = true
vim.opt.expandtab = false

-- Turning off backups
vim.opt.backup = false
vim.opt.wb = false
vim.opt.swapfile = false

-- Filetypes
vim.cmd("filetype plugin indent on")

-- Colorscheme
vim.opt.background = "dark"
vim.cmd("autocmd VimEnter * hi Normal ctermbg=none")
vim.cmd("colorscheme catppuccin_mocha")

-- History
vim.opt.history = 500

-- Use system clipboard
vim.opt.clipboard = "unnamedplus"

-- vim-plug plugins
vim.cmd([[call plug#begin('~/.config/nvim/plugged')
	Plug 'preservim/nerdtree'
	Plug 'preservim/nerdcommenter'
	Plug 'mg979/vim-visual-multi', {'branch': 'master'}
	"Plug 'windwp/nvim-autopairs'
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
call plug#end()]])

-- NERDTree
vim.cmd("autocmd VimEnter * NERDTree | wincmd p")

-- Exit Vim if NERDTree is the only window remaining in the only tab.
vim.cmd("autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif")

