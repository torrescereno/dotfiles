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
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox-material",
      -- colorscheme = "cyberdream",
      -- colorscheme = "tokyonight-storm",
      colorscheme = "catppuccin",
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
