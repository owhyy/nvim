local setup = require("lsp.utils").setup
local servers = { "pyright", "elixirls" }

for _, server in ipairs(servers) do
	setup(server)
end

