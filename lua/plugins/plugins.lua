return {
	-- file browser
	{
		"nvim-tree/nvim-tree.lua",
		cmd = { "NvimTreeToggle", "NvimTreeFocus" },
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("plugins.configs.nvim-tree")
		end,
	},

	-- picker
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {},
	},

	-- keymap ui
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},

	-- status line
	{ "nvim-lualine/lualine.nvim", dependencies = "nvim-tree/nvim-web-devicons", opts = {} },

	-- git integration
	{ "lewis6991/gitsigns.nvim", opts = {} },

	-- breadcrumbs
	{ "Bekaboo/dropbar.nvim", opts = {} },

	-- dashboard
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("plugins.configs.dashboard-nvim")
		end,
	},

	-- animations
	{
		"rachartier/tiny-glimmer.nvim",
		event = "VeryLazy",
		priority = 10, -- Needs to be a really low priority, to catch others plugins keybindings.
		opts = {
			overwrite = {
				paste = { default_animation = "fade" },
				undo = { enabled = true },
				redo = { enabled = true },
			}
		}
	},

	-- syntax highlighting
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("plugins.configs.treesitter")
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = { indent = { char = "▏" }, exclude = { filetypes = { "dashboard" } } },
	},

	-- LSP's
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		opts = {},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("plugins.configs.lspconfig")
		end,
	},

	-- autocomplete
	{
		"saghen/blink.cmp",
		version = "1.*",
		dependencies = {
			"rafamadriz/friendly-snippets",

			-- snippets engine
			{
				"L3MON4D3/LuaSnip",
				config = function()
					require("luasnip.loaders.from_vscode").lazy_load()
				end,
			},

			-- autopairs , autocompletes ()[] etc
			{ "windwp/nvim-autopairs", opts = {} },
		},
		event = "InsertEnter",

		---@module 'blink.cmp'
		---@type blink.cmp.Config
		opts = function()
			return require("plugins.configs.blink")
		end,
	},

	-- linting
	{
		"mfussenegger/nvim-lint",
		config = function()
			require("plugins.configs.nvim-lint")
		end,
	},

	-- formatting
	{
		"stevearc/conform.nvim",
		config = function()
			require("plugins.configs.conform")
		end,
	},
}
