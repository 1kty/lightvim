require('nvim-treesitter.configs').setup({
    ensure_installed = { "lua", "vim", "bash", "html", "css", "typescript", "javascript", "c", "cpp", "go", "python", "rust", "json" },
    auto_install = true,
    highlight = {
        enable = true,
    },
    indent = { enable = true },
})