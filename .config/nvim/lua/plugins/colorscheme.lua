return {

  -- GRUVBOX MATERIAL
  -- { "f4z3r/gruvbox-material.nvim" },

  -- CYBERDREAM
  -- {
  --   "scottmckendry/cyberdream.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = function(_, opts)
  --     opts.transparent = true
  --     opts.italic_comments = true
  --     opts.borderless_telescope = false
  --   end,
  -- },

  -- TOKYONIGH
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  -- },

  -- CATPPUCCIN
  -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- EVERFOREST
  -- {
  --   "sainnhe/everforest",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.g.everforest_enable_italic = true
  --     vim.g.everforest_background = "hard"
  --     vim.g.everforest_better_performance = 1
  --     vim.g.everforest_diagnostic_text_highlight = 1
  --   end,
  -- },

  -- ONE DARK PRO
  {
    "navarasu/onedark.nvim",
  },

  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox-material",
      -- colorscheme = "cyberdream",
      -- colorscheme = "tokyonight-storm",
      -- colorscheme = "catppuccin",
      -- colorscheme = "catppuccin-frappe",
      -- colorscheme = "everforest",
      colorscheme = "onedark",
    },
  },

  -- CYBERDREAM
  -- {
  --   "mawkler/modicator.nvim",
  --   dependencies = "scottmckendry/cyberdream.nvim",
  --   init = function()
  --     vim.o.cursorline = false
  --     vim.o.number = true
  --     vim.o.termguicolors = true
  --   end,
  --   opts = {},
  -- },
}
