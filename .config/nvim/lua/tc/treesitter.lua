---@diagnostic disable: missing-fields
local M = {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPost", "BufNewFile" },
	build = ":TSUpdate",
}

function M.config()
	require("nvim-treesitter.configs").setup({
		sync_install = false,
		auto_install = true,
		ignore_install = {},
		ensure_installed = {
			"lua",
			"markdown",
			"markdown_inline",
			"bash",
			"python",
			"dockerfile",
			"yaml",
			"html",
			"json",
		},
		highlight = { enable = true },
		indent = { enable = true },
	})
end

return M
