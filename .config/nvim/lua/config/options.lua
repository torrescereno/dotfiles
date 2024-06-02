-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- LazyVim
vim.g.lazyvim_python_lsp = "pyright"
vim.g.lazyvim_python_ruff = "ruff_lsp"

local opt = vim.opt

opt.termguicolors = true

-- Line number settings
opt.number = true
opt.relativenumber = true

--  Set cursor line settings
opt.wrap = true
opt.cursorline = true
opt.breakindent = true
opt.linebreak = true

-- Set Neovim to use the system clipboard
opt.clipboard = "unnamedplus"

-- Configure tab settings
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.shiftround = true

-- Always show 8 lines of "context" above and below the cursor
opt.scrolloff = 8

-- Ignore case
opt.ignorecase = true

-- #
opt.maxmempattern = 10000

-- Mostly just for cmp
opt.completeopt = { "menuone", "noselect" }

-- Always show tabs
opt.showtabline = 1

-- Smart case
opt.smartcase = true

-- Make indenting smarter again
opt.smartindent = true

-- Set term gui colors (most terminals support this)
-- opt.termguico = true

-- Faster completion (4000ms default)
opt.updatetime = 100

-- If a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
opt.writebackup = false

-- Encoding
opt.fileencoding = "utf-8"
opt.encoding = "utf-8"

-- Allow the mouse to be used in neovim
opt.mouse = "a"

-- Spell
opt.spelllang = "en_us,es"
opt.spell = true

-- Backup
opt.backup = false
--
vim.g.netrw_banner = 0
vim.g.netrw_mouse = 2

-- cursorline
-- opt.cursorline = true
