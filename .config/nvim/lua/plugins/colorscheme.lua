return {

  -- GRUVBOX MATERIAL
  -- { "f4z3r/gruvbox-material.nvim" },

  -- CATPPUCCIN
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = function(_, opts)
      opts.flavour = "macchiato"
    end,
  },

  -- ONE DARK PRO
  -- {
  --   "navarasu/onedark.nvim",
  -- },

  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox-material",
      colorscheme = "catppuccin",
      -- colorscheme = "onedark",
    },
  },
}
