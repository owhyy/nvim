require("nvim-treesitter.configs").setup({
	ensure_installed = { "markdown", "python", "php", "elixir", "lua", "latex", "javascript", "typescript", "cpp" },
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	textobjects = {
		select = {
			enable = true,
			lookahead = true,
			keymaps = {
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ac"] = "@class.outer",
				["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
			},
			selection_modes = {
				["@parameter.outer"] = "v",
			},
		},
	},
})
