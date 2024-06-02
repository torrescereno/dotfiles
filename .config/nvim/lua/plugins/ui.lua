return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
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
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
