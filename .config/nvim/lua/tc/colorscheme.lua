local M = {
	"projekt0n/github-nvim-theme",
	lazy = false,
	priority = 1000,
}

function M.config()
	vim.cmd.colorscheme("github_dark_colorblind")
end

return M
