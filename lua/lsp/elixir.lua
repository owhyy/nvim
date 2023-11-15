local setup = require("lsp.utils").setup
setup("elixirls", { cmd = { os.getenv("HOME") .. "/.local/bin/elixir/language_server.sh" } })
