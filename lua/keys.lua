local builtin = require("telescope.builtin")
local zk = require("zk.commands")
local nt = require("nvim-tree.api")
local gs = require("gitsigns")

-- Telescope
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fz", zk.get("ZkNotes"), {})
vim.keymap.set("n", "<leader>fl", builtin.resume, {})

vim.keymap.set("n", "<leader>gs", gs.stage_hunk)
vim.keymap.set("n", "<leader>gr", gs.reset_hunk)
vim.keymap.set("n", "<leader>gb", gs.reset_hunk)

-- Lsp
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	end,
})

-- NvimTree
vim.keymap.set("n", "<leader>e", nt.tree.open, {})

-- Format on F9
vim.cmd([[nnoremap <F9> :FormatWrite<CR>]])

vim.cmd([[nnoremap <Left> :tabprevious<CR>]])
vim.cmd([[nnoremap <Right> :tabnext<CR>]])
vim.cmd([[nnoremap <leader>tn :tabnew<CR>]])
vim.api.nvim_set_keymap('n', '<leader>d', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
