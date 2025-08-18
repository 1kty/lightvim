-- ui
vim.opt.termguicolors = true
vim.opt.signcolumn = 'yes'
vim.opt.cursorline = true
vim.opt.winborder = 'rounded'

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- behaviour
vim.opt.laststatus = 3
vim.opt.showmode = false
vim.opt.ruler = false
vim.opt.wrap = false
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 8

-- mouse support
vim.opt.mouse = 'a'

-- indentation
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- file saving
vim.opt.autowrite = true
vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.confirm = true

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- system keyboard sync
vim.opt.clipboard = 'unnamedplus'