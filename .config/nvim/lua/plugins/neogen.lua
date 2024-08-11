local M = {
  "danymat/neogen",
  keys = {
    {
      "<leader>cc",
      function()
        require("neogen").generate({})
      end,
      desc = "Neogen Comment",
    },
  },
  opts = { snippet_engine = "luasnip" },
}

function M.config()
  require("neogen").setup({
    enabled = true,
    languages = {
      lua = {
        template = {
          annotation_convention = "emmylua",
        },
      },
      python = {
        template = {
          annotation_convention = "google_docstrings",
        },
      },
    },
  })
end

return M
