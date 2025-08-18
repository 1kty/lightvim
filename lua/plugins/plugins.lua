return {
    -- file browser
    { 
        "nvim-tree/nvim-tree.lua", 
        cmd = { "NvimTreeToggle", "NvimTreeFocus" }, 
        dependencies = "nvim-tree/nvim-web-devicons", 
        config = function()
            require "plugins.configs.nvim-tree"
        end,
    },

    -- status line
    { "nvim-lualine/lualine.nvim", dependencies = "nvim-tree/nvim-web-devicons", opts = {} },

    -- git integration
    { "lewis6991/gitsigns.nvim", opts = {} },
    
    -- treesitter 
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require "plugins.configs.treesitter"
        end,
    },
    { 
        "lukas-reineke/indent-blankline.nvim", 
        main = "ibl", 
        ---@module "ibl"
        ---@type ibl.config
        opts = {}
    }

}