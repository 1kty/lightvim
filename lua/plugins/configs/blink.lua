return {
snippets = { preset = "luasnip" },
  sources = { default = { "lsp", "snippets", "buffer", "path" } },

  keymap = {
    ["<CR>"] = { "accept", "fallback" },
    ["<C-b>"] = { "scroll_documentation_up", "fallback" },
    ["<C-f"] = { "scroll_documentation_down", "fallback" },
  },

  completion = {
    ghost_text = { enabled = true },
    documentation = {
      auto_show = true,
      auto_show_delay_ms = 0,
    },
  },
}