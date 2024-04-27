require("tc.launch")
require("tc.options")
require("tc.keymaps")
require("tc.autocmds")

spec("tc.colorscheme")
spec("tc.devicons")
spec("tc.treesitter")
spec("tc.mason")
spec("tc.schemastore")
spec("tc.lspconfig")
spec("tc.cmp")
spec("tc.whichkey")
spec("tc.comment")
spec("tc.telescope")
spec("tc.lualine")
spec("tc.harpoon")
spec("tc.autopairs")
spec("tc.gitsigns")
spec("tc.project")
spec("tc.indentline")
spec("tc.refactoring")
-- spec("tc.nvim-dap")
-- spec("tc.neogit")
-- spec("tc.nvim-tree")

-- Linter y Format
-- spec("tc.none-ls")

-- Linter (dev)
spec("tc.nvim-lint")

-- Format (dev)
spec("tc.conform")

spec("tc.extras.copilot")
spec("tc.extras.neoscroll")
spec("tc.extras.fidget")
spec("tc.extras.dressing")
spec("tc.extras.todo-comments")
spec("tc.extras.ufo")
spec("tc.extras.neotab")
spec("tc.extras.colorizer")
spec("tc.extras.tmux-navigation")
spec("tc.extras.dashboard")
spec("tc.extras.modicator")
spec("tc.extras.bqf")
-- spec("tc.extras.nvim-dap-python")
-- spec("tc.extras.neotest")
-- spec("tc.extras.noice")

require("tc.lazy")
