local builtin = require("telescope.builtin")
local zk = require("zk.commands")

-- Telescope
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fz", zk.get("ZkNotes"), {})

-- Lsp
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	end,
})

-- Format on F9
vim.cmd([[nnoremap <F9> :FormatWrite<CR>]])