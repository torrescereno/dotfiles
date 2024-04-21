-- Gruvbox Material
local M = {
	"f4z3r/gruvbox-material.nvim",
	lazy = false,
	priority = 1000,
}

function M.config()
	vim.cmd.colorscheme("gruvbox-material")
end

return M

-- Tokyo Night
-- local M = {
-- 	"folke/tokyonight.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- }
--
-- function M.config()
-- 	vim.cmd.colorscheme("tokyonight-night")
-- end
--
-- return M

-- Gruvbox
-- local M = {
-- 	"ellisonleao/gruvbox.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- }
--
-- function M.config()
-- 	vim.o.background = "dark"
-- 	vim.cmd.colorscheme("gruvbox")
-- 	require("gruvbox").setup({
-- 	})
-- end
--
-- return M
