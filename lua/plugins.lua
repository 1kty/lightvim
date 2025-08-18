-- use native vim.pack
vim.pack.add({
    -- themes
    { src = "https://github.com/dgox16/oldworld.nvim" },
    { src = "https://github.com/folke/tokyonight.nvim" },
    { src = "https://github.com/rebelot/kanagawa.nvim" },
    { src = "https://github.com/EdenEast/nightfox.nvim" },
    { src = "https://github.com/navarasu/onedark.nvim" },
    { src = "https://github.com/Mofiqul/vscode.nvim" },
    { src = "https://github.com/datsfilipe/vesper.nvim" },
    { src = "https://github.com/slugbyte/lackluster.nvim" },
    { src = "https://github.com/mellow-theme/mellow.nvim" },
    { src = "https://github.com/zenbones-theme/zenbones.nvim" },
    -- plugins
    { src = "https://github.com/nvim-tree/nvim-tree.lua" }, -- file browser
    { src = "https://github.com/nvim-tree/nvim-web-devicons" }, -- icons for file browser
    { src = "https://github.com/nvim-lualine/lualine.nvim" }, -- status line
    { src = "https://github.com/lewis6991/gitsigns.nvim" }, -- git integration

})

-- set theme
vim.cmd(":colorscheme oldworld")

-- enable plugins
require("nvim-tree").setup()
require("plugins.lualine")