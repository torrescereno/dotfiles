-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- LazyVim
vim.g.lazyvim_python_lsp = "pyright"
vim.g.lazyvim_python_ruff = "ruff_lsp"
vim.g.lazyvim_picker = "telescope"

local opt = vim.opt

--  Set cursor line settings
opt.wrap = true
opt.breakindent = true

-- Always show 8 lines of "context" above and below the cursor
opt.scrolloff = 8

-- # Max memory used for the pattern buffer
opt.maxmempattern = 10000

-- If a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
opt.writebackup = false

-- Encoding
opt.fileencoding = "utf-8"
opt.encoding = "utf-8"

-- Spell
opt.spelllang = "en_us,es"
opt.spell = true

-- Backup
opt.backup = false

-- Extra
vim.g.netrw_banner = 0
vim.g.netrw_mouse = 2
