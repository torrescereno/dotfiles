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
			"eslint",
			"tsserver",
			"pyright",
			"bashls",
			"jsonls",
			"yamlls",
			"ruff",
		},
	})

	mason_tool_installer.setup({
		ensure_installed = {
			"prettier",
			"stylua",
			"eslint_d",
		},
	})
end

return M
