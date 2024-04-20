return {
	settings = {
		pyright = {
			disableOrganizeImports = true, -- Using Ruff
		},
		python = {
			analysis = {
				ignore = { "*" }, -- Using Ruff
				-- typeCheckingMode = "off", -- Using mypy
			},
		},
	},
}
