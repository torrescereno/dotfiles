local M = {
	"ThePrimeagen/refactoring.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-lua/plenary.nvim",
	},
}

function M.config()
	require("refactoring").setup()
end

return M
