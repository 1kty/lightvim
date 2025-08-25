return {
	snippets = { preset = "luasnip" },
	sources = { default = { "lsp", "snippets", "buffer", "path" } },

	keymap = {
		-- ["<CR>"] = { "accept", "fallback" },
		["<C-b>"] = { "scroll_documentation_up", "fallback" },
		["<C-f"] = { "scroll_documentation_down", "fallback" },
	},
}