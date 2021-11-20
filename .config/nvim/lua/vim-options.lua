local opt = vim.opt

opt.encoding		=	'utf-8'
opt.fileformat		=	'unix'
opt.swapfile	    =   false

opt.scroll		    =	15
opt.scrolloff		=	10
opt.wrap		    =	true
opt.linebreak		=	true
opt.list		    =	false
opt.sidescrolloff	=	10
opt.display		    =	'lastline'
opt.relativenumber	=	true
opt.number		    =	true
opt.numberwidth		=	4

opt.tabstop		    =	4
opt.softtabstop		=	4
opt.shiftwidth		=	4
opt.smarttab		=	true
opt.expandtab		=	true
opt.autoindent		=	true

-- Completion
opt.completeopt     =   'menu'

-- Colorscheme
vim.o.termguicolors =   true
vim.cmd[[colorscheme tokyonight]]
