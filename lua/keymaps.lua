local Utils = require("utils")

-- local exprnnoremap = Utils.exprnnoremap
local nnoremap = Utils.nnoremap
local vnoremap = Utils.vnoremap
-- local xnoremap = Utils.xnoremap
local inoremap = Utils.inoremap
-- local tnoremap = Utils.tnoremap
-- local nmap = Utils.nmap
-- local xmap = Utils.xmap

vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Run omnifunc, mostly used for autocomplete
inoremap("<C-SPACE>", "<C-x><C-o>")

-- Move around windows
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")

-- Sizing window horizontally
nnoremap("<A-h>", "<C-W>>")
nnoremap("<A-l>", "<C-W><")

-- Sizing window vertically
-- taller
nnoremap("<A-j>", "<C-W>+")
-- shorter
nnoremap("<A-k>", "<C-W>-")

-- Splits
nnoremap("<leader>ws", ":split<CR>")
nnoremap("<leader>vs", ":vsplit<CR>")

-- Populate substitution
nnoremap("<leader>s", ":s//g<Left><Left>")
vnoremap("<leader>s", ":s//g<Left><Left>")

-- Delete buffer
nnoremap("<A-w>", ":bd<CR>")

-- Yank to end of line
nnoremap("Y", "y$")

-- Telescope
nnoremap("<leader>ff", "<Cmd>Telescope find_files<CR>")
nnoremap("<leader>fb", "<Cmd>Telescope buffers<CR>")
nnoremap("<leader>fg", "<Cmd>Telescope live_grep<CR>")
nnoremap("<leader>fz", "<Cmd>Telescope zk notes<CR>")

-- File explorer
nnoremap("<leader>e", "<Cmd>NvimTreeToggle<CR>") -- NvimTree

-- Debugging shortcuts
nnoremap("<leader>dn", ":lua require('dap-python').test_method()<CR>")
nnoremap("<leader>df", ":lua require('dap-python').test_class()<CR>")
nnoremap("<leader>ds", ":lua require('dap-python').debug_selection()<CR>")

-- Tab tmux-like zooming
nnoremap("<c-w>t", ":tabe %<CR>")
-- Run formatter
nnoremap("<F9>", ":FormatWrite<CR>")

-- Switch between tabs
vim.keymap.set("n", "<Right>", function()
	vim.cmd([[checktime]])
	vim.api.nvim_feedkeys("gt", "n", true)
end)

vim.keymap.set("n", "<Left>", function()
	vim.cmd([[checktime]])
	vim.api.nvim_feedkeys("gT", "n", true)
end)

nnoremap("<M-CR>", ":lua vim.lsp.buf.code_action()<CR>")

vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
