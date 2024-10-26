return {

  -- GRUVBOX MATERIAL
  -- {
  --   "f4z3r/gruvbox-material.nvim",
  --   priority = 1000,
  --   opts = function(_, opts)
  --     opts.italic = true
  --     opts.comments = {
  --       italics = true,
  --     }
  --     opts.background = {
  --       transparent = true,
  --     }
  --   end,
  -- },

  -- CATPPUCCIN
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  --   opts = function(_, opts)
  --     opts.flavour = "macchiato"
  --     -- opts.transparent_background = true
  --   end,
  -- },

  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
  },

  -- ONE DARK PRO
  -- {
  --   "navarasu/onedark.nvim",
  -- },

  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox-material",
      -- colorscheme = "catppuccin",
      -- colorscheme = "onedark",
      colorscheme = "moonfly",
    },
  },
}
