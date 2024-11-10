return {

  -- GRUVBOX MATERIAL
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_background = "hard"
    end,
  },

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

  -- {
  --   "bluz71/vim-moonfly-colors",
  --   name = "moonfly",
  --   lazy = false,
  --   priority = 1000,
  -- },

  -- ONE DARK PRO
  -- {
  --   "navarasu/onedark.nvim",
  -- },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
      -- colorscheme = "catppuccin",
      -- colorscheme = "onedark",
      -- colorscheme = "moonfly",
    },
  },
}
