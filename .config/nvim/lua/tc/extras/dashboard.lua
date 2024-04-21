local M = {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
}

function M.config()
	local logo = [[
      ___                       ___           ___     
     /\  \          ___        /\  \         /\  \    
    /::\  \        /\  \      /::\  \       /::\  \   
   /:/\:\  \       \:\  \    /:/\:\  \     /:/\:\  \  
  /:/  \:\  \      /::\__\  /::\~\:\  \   /:/  \:\  \ 
 /:/__/ \:\__\  __/:/\/__/ /:/\:\ \:\__\ /:/__/ \:\__\
 \:\  \  \/__/ /\/:/  /    \/_|::\/:/  / \:\  \ /:/  /
  \:\  \       \::/__/        |:|::/  /   \:\  /:/  / 
   \:\  \       \:\__\        |:|\/__/     \:\/:/  /  
    \:\__\       \/__/        |:|  |        \::/  /   
     \/__/                     \|__|         \/__/    
    ]]

	logo = string.rep("\n", 8) .. logo

	require("dashboard").setup({
		theme = "hyper",
		config = {
			header = vim.split(logo, "\n"),
			shortcut = {},
			footer = {},
		},
	})
end

return M
