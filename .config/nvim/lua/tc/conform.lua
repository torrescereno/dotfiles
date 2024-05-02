local M = {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
}

function M.config()
	local conform = require("conform")

	conform.setup({
		formatters_by_ft = {
			javascript = { "prettier" },
			typescript = { "prettier" },
			javascriptreact = { "prettier" },
			typescriptreact = { "prettier" },
			css = { "prettier" },
			html = { "prettier" },
			json = { "prettier" },
			yaml = { "prettier" },
			markdown = { "prettier" },
			graphql = { "prettier" },
			liquid = { "prettier" },
			lua = { "stylua" },
			python = { "ruff", "ruff_format" },
		},
		format_on_save = {
			lsp_fallback = true,
			async = false,
			timeout_ms = 100,
		},
	})
end

return M
