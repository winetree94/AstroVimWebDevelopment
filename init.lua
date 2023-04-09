return {
  colorscheme = "catppuccin-mocha",
  lsp = {
    formatting = {
      disabled = {
        "tsserver",
        "prettier",
        "html",
      },
    },
    config = {
      tsserver = function(opts)
        opts.root_dir = require("lspconfig.util").root_pattern "package.json"
        return opts
      end,
      -- Prettier 는 eslint 에 넘겨서 처리함
      -- prettier = function(opts)
      --   opts.filetypes = {
      --     "typescript",
      --     "typescriptreact",
      --     "html",
      --   }
      -- end,
      eslint = function(opts)
        opts.root_dir = require("lspconfig.util").root_pattern("package.json", ".eslintrc.json", ".eslintrc.js")
        opts.filetypes = {
          "typescript",
          "typescriptreact",
          "html",
        }
        return opts
      end,
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    config = function(plugin, opts)
      local mason_null_ls = require "mason-null-ls"
      local null_ls = require "null-ls"

      mason_null_ls.setup_handlers { -- setup custom handlers
        -- prettier = function()
        --   null_ls.register(null_ls.builtins.formatting.prettier.with {
        --     filetypes = {
        --       "typescript",
        --       "typescriptreact",
        --       "html",
        --     },
        --     condition = function(utils)
        --       return utils.root_has_file "package.json"
        --         or utils.root_has_file ".prettierrc"
        --         or utils.root_has_file ".prettierrc.json"
        --         or utils.root_has_file ".prettierrc.js"
        --     end,
        --   })
        -- end,
        --
        -- Prettier 는 eslint 에 넘겨서 처리함
        --
        -- prettierd = function()
        --   null_ls.register(null_ls.builtins.formatting.prettierd.with {
        --     condition = function(utils)
        --       return utils.root_has_file "package.json"
        --         or utils.root_has_file ".prettierrc"
        --         or utils.root_has_file ".prettierrc.json"
        --         or utils.root_has_file ".prettierrc.js"
        --     end,
        --   })
        -- end,
        eslint_d = function()
          null_ls.register(null_ls.builtins.diagnostics.eslint_d.with {
            condition = function(utils)
              return utils.root_has_file "package.json"
                or utils.root_has_file ".eslintrc.json"
                or utils.root_has_file ".eslintrc.js"
            end,
          })
        end,
      }
    end,
  },
}
