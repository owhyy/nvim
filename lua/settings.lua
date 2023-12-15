vim.g.mapleader = " "
vim.o.clipboard = "unnamedplus"
vim.o.hlsearch = false
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2

vim.wo.number = true
vim.wo.relativenumber = true

-- recommended by nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[au TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout=300})]])
vim.cmd([[let g:vimtex_view_method = 'zathura']])
