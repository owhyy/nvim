require("nvim-treesitter.configs").setup({
  ensure_installed = { "markdown", "python", "php", "elixir", "lua" },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  }
})
