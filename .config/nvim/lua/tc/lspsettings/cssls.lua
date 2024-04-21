return {
	-- cmd = { "vscode-css-language-server", "--stdio" },
	-- filetypes = { "css", "scss", "less" },
	-- root_dir = require("lspconfig.util").root_pattern("package.json", ".git"),
	-- settings = {
	-- 	css = {
	-- 		validate = true,
	-- 	},
	-- 	less = {
	-- 		validate = true,
	-- 	},
	-- 	scss = {
	-- 		validate = true,
	-- 	},
	-- },
	settings = {
		css = {
			lint = {
				unknownAtRules = "ignore",
			},
		},
		scss = {
			lint = {
				unknownAtRules = "ignore",
			},
		},
		less = {
			lint = {
				unknownAtRules = "ignore",
			},
		},
	},
}
