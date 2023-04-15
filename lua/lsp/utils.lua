-- LSP helper function

local M = {}

-- This function defines the on_attach function for several languages which share the same key-bidings
function M.common_on_attach(client, bufnr)
	-- -- Set omnifunc
	-- vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

	-- Helper function
	local opts = { noremap = true, silent = true }
	local function bufnnoremap(lhs, rhs)
		vim.api.nvim_buf_set_keymap(bufnr, "n", lhs, rhs, opts)
	end

	-- Keymaps: we need to define keymaps for each of the LSP functionalities manually
	-- Go to definition and declaration (use leader to presever standard use of 'gd')
	bufnnoremap("gd", "<Cmd>lua vim.lsp.buf.definition()<CR>")
	bufnnoremap("gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>")

	-- bufnnoremap("<leader>gd", "<Cmd>lua vim.lsp.buf.definition()<CR>")
	-- bufnnoremap("<leader>gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>")

	-- Go to implementation
	bufnnoremap("<leader>gi", "<Cmd>lua vim.lsp.buf.implementation()<CR>")

	-- List symbol uses
	bufnnoremap("<leader>gr", "<cmd>Telescope lsp_references<CR>") -- Uses Telescope

	-- Inspect function
	bufnnoremap("K", "<Cmd>lua vim.lsp.buf.hover()<CR>")

	-- Rename all references of symbol
	bufnnoremap("<leader>R", "<Cmd>lua vim.lsp.buf.rename()<CR>")

	-- Navigate diagnostics
	bufnnoremap("<C-n>", "<Cmd>lua vim.diagnostic.goto_next()<CR>")
	bufnnoremap("<C-p>", "<Cmd>lua vim.diagnostic.goto_prev()<CR>")
end

return M
