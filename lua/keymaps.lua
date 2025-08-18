local map = vim.keymap.set

-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- -- mappings
map({ "n", "v" }, ";", ":", { noremap = true, silent = false })
map("n", "<C-s>", "<cmd> w <CR>")
map("i", "jk", "<ESC>")

-- navigation
map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

map("i", "<C-a>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

-- search
map("n", "<leader>/", ":nohlsearch<CR>")

-- nvim-tree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")
