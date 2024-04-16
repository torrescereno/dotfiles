local M = {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"AndreM222/copilot-lualine",
	},
}

function M.config()

	require("lualine").setup({
		options = {
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
			ignore_focus = { "NvimTree" },
		},
		sections = {
			-- lualine_a = {},
			lualine_b = { "branch", "encoding" },
			lualine_c = { "diagnostics", "fileformat" },
			lualine_x = { "copilot", "filetype" },
			lualine_y = { "progress" },
			lualine_z = {},
		},
		extensions = { "quickfix", "man", "fugitive" },
	})
end

return M
