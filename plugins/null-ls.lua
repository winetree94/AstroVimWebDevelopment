return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics

    -- eslint 를 통해 진단 및 포맷팅이 동작하도록 설정
    config.sources = {

      null_ls.builtins.formatting.eslint.with {
        filetypes = {
          "javascript",
          "javascriptreact",
          "html",
          "typescriptreact",
          "typescript",
        },
        condition = function(utils) return utils.root_has_file ".eslintrc.json" or utils.root_has_file ".eslintrc.js" end,
      },

      null_ls.builtins.diagnostics.eslint.with {
        filetypes = {
          "javascript",
          "javascriptreact",
          "html",
          "typescriptreact",
          "typescript",
        },
        condition = function(utils) return utils.root_has_file ".eslintrc.json" or utils.root_has_file ".eslintrc.js" end,
      },
    }
    return config -- return final config table
  end,
}
