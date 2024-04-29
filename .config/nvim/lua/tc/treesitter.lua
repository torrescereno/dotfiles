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
			"vimdoc",
			"javascript",
			"typescript",
			"rust",
			"jsdoc",
			"toml",
			"ron",
		},
		highlight = { enable = true, additional_vim_regex_highlighting = { "markdown" } },
		indent = { enable = true },
	})
end

return M
