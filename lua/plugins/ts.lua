require("nvim-treesitter.configs").setup({
	ensure_installed = { "markdown", "lua", "python", "php" },
	highlight = {
		enable = true,
	},
})
