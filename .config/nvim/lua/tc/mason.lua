local M = {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
}

function M.config()
	local mason = require("mason")
	local mason_lspconfig = require("mason-lspconfig")
	local mason_tool_installer = require("mason-tool-installer")

	mason.setup({
		ui = {
			border = "rounded",
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗",
			},
		},
	})

	mason_lspconfig.setup({
		ensure_installed = {
			"lua_ls",
			"cssls",
			"html",
			"tsserver",
			"tailwindcss",
			"eslint",
			"pyright",
			-- "ruff_lsp",
			"bashls",
			"jsonls",
			"yamlls",
			"astro",
			"dockerls",
			"rust_analyzer",
		},
	})

	mason_tool_installer.setup({
		ensure_installed = {
			"prettier",
			"stylua",
			"ruff",
			-- "mypy",
			-- "black",
			-- "isort",
			-- "flake8",
			-- "pylint",
			"eslint_d",
		},
	})
end

return M
