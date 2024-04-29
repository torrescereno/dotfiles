local M = {
	"saecki/crates.nvim",
	tag = "stable",
	event = { "BufRead Cargo.toml" },
	opts = {
		src = {
			cmp = { enabled = true },
		},
	},
}

function M.config()
	require("crates").setup()
end

return M
