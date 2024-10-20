-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

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

--
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)
keymap("n", "*", "*zz", opts)
keymap("n", "#", "#zz", opts)
keymap("n", "g*", "g*zz", opts)
keymap("n", "g#", "g#zz", opts)
