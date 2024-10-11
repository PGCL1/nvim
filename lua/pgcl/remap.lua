vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("t", "jk", "<C-\\><C-n>")

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")

vim.keymap.set("n", "ee", vim.cmd.w)
vim.keymap.set("n", "vv", ":vs<CR> <C-W><C-W>")
vim.keymap.set("n", "ss", ":sp<CR> <C-W><C-W>")
vim.keymap.set("t", "<C-D>", "exit<CR>")
vim.keymap.set("i", "jk", "<Esc>")
