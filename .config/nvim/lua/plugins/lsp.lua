return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false,
      },
      diagnostics = { virtual_text = { prefix = "icons" } },
      capabilities = {
        textDocument = {
          foldingRange = {
            dynamicRegistration = false,
            lineFoldingOnly = true,
          },
          completion = {
            completionItem = {
              snippetSupport = true,
            },
          },
        },
      },
      showMessage = {
        messageActionItem = {
          additionalPropertiesSupport = true,
        },
      },
      flags = {
        debounce_text_changes = 150,
      },
      servers = {
        pyright = {
          settings = {
            pyright = {
              disableOrganizeImports = true,
            },
            python = {
              analysis = {
                -- ignore = { "*" },
                typeCheckingMode = "off",
              },
            },
          },
        },
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              procMacro = { enable = true },
              cargo = { allFeatures = true },
              checkOnSave = {
                command = "clippy",
                extraArgs = { "--no-deps" },
              },
            },
          },
        },
        -- gopls = {
        --   settings = {
        --     gopls = {
        --       gofumpt = true,
        --       codelenses = {
        --         gc_details = false,
        --         generate = true,
        --         regenerate_cgo = true,
        --         run_govulncheck = true,
        --         test = true,
        --         tidy = true,
        --         upgrade_dependency = true,
        --         vendor = true,
        --       },
        --       hints = {
        --         assignVariableTypes = true,
        --         compositeLiteralFields = true,
        --         compositeLiteralTypes = true,
        --         constantValues = true,
        --         functionTypeParameters = true,
        --         parameterNames = true,
        --         rangeVariableTypes = true,
        --       },
        --       analyses = {
        --         fieldalignment = true,
        --         nilness = true,
        --         unusedparams = true,
        --         unusedwrite = true,
        --         useany = true,
        --       },
        --       usePlaceholders = true,
        --       completeUnimported = true,
        --       staticcheck = true,
        --       directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules", "-.nvim" },
        --       semanticTokens = true,
        --     },
        --   },
        -- },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "rust-analyzer" } },
  },
}
