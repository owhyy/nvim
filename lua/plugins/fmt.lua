local util = require("formatter.util")

require("formatter").setup({
	logging = true,
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		markdown = {
			require("formatter.filetypes.markdown").markdown,
		},
		php = {
			require("formatter.filetypes.php").phpcbf,
		},
		python = {
			require("formatter.filetypes.python").black,
		},
		cpp = {
			require("formatter.filetypes.cpp").clangformat,
		},
		javascript = {
			require("formatter.filetypes.javascript").prettier,
		},
		javascriptreact = {
			require("formatter.filetypes.javascriptreact").prettier,
		},
	},
})
