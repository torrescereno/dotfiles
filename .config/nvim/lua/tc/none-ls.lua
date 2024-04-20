local M = {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
}

function M.config()
	local null_ls = require("null-ls")

	local formatting = null_ls.builtins.formatting
	local diagnostics = null_ls.builtins.diagnostics
	local completion = null_ls.builtins.completion

	null_ls.setup({
		debug = false,
		sources = {
			formatting.stylua,
			formatting.prettier,
			formatting.black,
			diagnostics.mypy.with({
				extra_args = function()
					local virtual = os.getenv("VIRTUAL_ENV") or os.getenv("CONDA_PREFIX") or "/usr"
					return { "--python-executable", virtual .. "/bin/python3" }
				end,
			}),
			completion.spell,
		},
	})
end

return M
