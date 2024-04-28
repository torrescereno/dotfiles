local M = {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
}

function M.config()
	local null_ls = require("null-ls")
	local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

	local formatting = null_ls.builtins.formatting
	local diagnostics = null_ls.builtins.diagnostics
	local completion = null_ls.builtins.completion

	null_ls.setup({
		debug = false,
		sources = {
			formatting.stylua,
			formatting.prettier,
			formatting.black.with({
				extra_args = { "--line-length=120" },
			}),
			diagnostics.mypy.with({
				extra_args = function()
					local virtual = os.getenv("VIRTUAL_ENV") or os.getenv("CONDA_PREFIX") or "/usr"
					return { "--python-executable", virtual .. "/bin/python3" }
				end,
			}),
			completion.spell,
		},
		on_attach = function(client, bufnr)
			if client.supports_method("textDocument/formatting") then
				vim.api.nvim_clear_autocmds({
					group = augroup,
					buffer = bufnr,
				})
				vim.api.nvim_create_autocmd("BufWritePre", {
					group = augroup,
					buffer = bufnr,
					callback = function()
						vim.lsp.buf.format({ bufnr = bufnr })
					end,
				})
			end
		end,
	})
end

return M
