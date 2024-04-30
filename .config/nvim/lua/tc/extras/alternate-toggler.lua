local M = {
	"rmagatti/alternate-toggler",
}

function M.config()
	require("alternate-toggler").setup({
		alternates = {
			["==="] = "!==",
			["=="] = "!=",
		},
	})

	local keymap = vim.keymap

	keymap.set("n", "<leader>i", "<cmd>ToggleAlternate<cr>")
end

return M
