local M = {}
local lspconfig = require("lspconfig")

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local function on_attach(client, bufnr)
	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

	local opts = { noremap = true, silent = true }

	local function bufnnoremap(lhs, rhs)
		vim.api.nvim_buf_set_keymap(bufnr, "n", lhs, rhs, opts)
	end

	bufnnoremap("gd", "<Cmd>lua vim.lsp.buf.definition()<CR>")
	bufnnoremap("gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>")
	bufnnoremap("K", "<Cmd>lua vim.lsp.buf.hover()<CR>")
	bufnnoremap("gi", "<Cmd>lua vim.lsp.buf.implementation()<CR>")
	bufnnoremap("R", "<Cmd>lua vim.lsp.buf.rename()<CR>")
	bufnnoremap("gr", "<Cmd>lua vim.lsp.buf.references()<CR>")
end

function M.setup(server, ...)
	local lsp_settings = { on_attach = on_attach, capabilities = capabilities }
	local n_varargs = select("#", ...)
	if n_varargs > 0 then
		for k, v in pairs(...) do
			lsp_settings[k] = v
		end
	end
	lspconfig[server].setup(lsp_settings)
end

return M
