return {
    colorscheme = "catppuccin-mocha",

  lsp = {
    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = true, -- enable or disable format on save globally
        allow_filetypes = { -- enable format on save for specified filetypes only
          -- "go",
        },
        ignore_filetypes = { -- disable format on save for specified filetypes
          -- "python",
        },
      },
      timeout_ms = 1000, -- default format timeout
      disabled = {
        -- disable formatting capabilities for the listed language servers
        -- disable lua_ls formatting capability if you want to use StyLua to format your lua code
        -- "lua_ls",
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

  -- Configure require("lazy").setup() options
  lazy = {
    defaults = { lazy = true },
    performance = {
      rtp = {
        -- customize default disabled vim plugins
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
      },
    },
  },

  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- anything that doesn't fit in the normal config locations above can go here
  polish = function()
    -- Set up custom filetypes
    -- vim.filetype.add {
    --   extension = {
    --     foo = "fooscript",
    --   },
    --   filename = {
    --     ["Foofile"] = "fooscript",
    --   },
    --   pattern = {
    --     ["~/%.config/foo/.*"] = "fooscript",
    --   },
    -- }
  end,
}
