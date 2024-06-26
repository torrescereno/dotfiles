local M = {
  "yamatsum/nvim-cursorline",
  opts = {
    cursorline = {
      enable = true,
      timeout = 1000,
      number = false,
    },
    cursorword = {
      enable = true,
      min_length = 3,
      hl = { underline = true },
    },
  },
}

function M.config()
  require("nvim-cursorline").setup()
end

return M
