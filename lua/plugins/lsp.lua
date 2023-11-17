local setup = require("lsp.utils").setup
local servers = { "pyright", "elixirls" }

for _, server in ipairs(servers) do
	setup(server)
end

vim.diagnostic.config({ virtual_text = false, update_in_insert = false })

-- additional config
require("lsp.elixir")
