local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Saving files with <C-s>
keymap("n", "<C-s>", vim.cmd.update, opts)
keymap({ "i", "x" }, "<C-s>", "<Esc><Cmd>up!<CR>", opts)

-- Better indent/dedent lines and blocks of text
keymap("n", ">", ">>", opts)
keymap("n", "<", "<<", opts)
keymap("x", ">", ">gv", opts)
keymap("x", "<", "<gv", opts)

-- Better buffer navigation/deletion
keymap("n", "<m-h>", "<C-w>h", opts)
keymap("n", "<m-j>", "<C-w>j", opts)
keymap("n", "<m-k>", "<C-w>k", opts)
keymap("n", "<m-l>", "<C-w>l", opts)
keymap("n", "<m-tab>", "<c-6>", opts)
keymap("n", "<C-w>", "<Cmd>bd!<CR>", opts)

-- Yunk
keymap("x", "p", [["_dP]])

-- Select all
keymap("n", "<C-a>", "gg<S-v>G")

-- Map esc to go to normal mode for terminal
keymap("t", "<Esc>", "<C-Bslash><C-n>", opts)

-- Move lines
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- Split window
keymap("n", "ss", ":split<Return>", opts)
keymap("n", "sv", ":vsplit<Return>", opts)

-- Tmux
keymap("n", "<C-h>", "<Cmd>TmuxNavigateLeft<CR>")
keymap("n", "<C-j>", "<Cmd>TmuxNavigateDown<CR>")
keymap("n", "<C-k>", "<Cmd>TmuxNavigateUp<CR>")
keymap("n", "<C-l>", "<Cmd>TmuxNavigateRight<CR>")

-- #

keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)
keymap("n", "*", "*zz", opts)
keymap("n", "#", "#zz", opts)
keymap("n", "g*", "g*zz", opts)
keymap("n", "g#", "g#zz", opts)

vim.cmd([[:amenu 10.100 mousemenu.Goto\ Definition <cmd>lua vim.lsp.buf.definition()<CR>]])
vim.cmd([[:amenu 10.110 mousemenu.References <cmd>lua vim.lsp.buf.references()<CR>]])
