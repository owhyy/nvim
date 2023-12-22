require("nvim-treesitter.configs").setup({
	ensure_installed = { "markdown", "python", "php", "elixir", "lua", "latex", "javascript", "typescript", "cpp" },
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
})
