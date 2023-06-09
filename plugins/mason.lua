-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "html",
        "cssls",
        "tailwindcss",
        "tsserver",
        "angularls",
        "eslint",
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "emmit-ls",
        "eslint-lsp",
        "eslint_d",
        "html-lsp",
        "typescript-language-server",
        "angular-language-server",
        "css-lsp",
        "tailwindcss-language-server",
        "stylua",
        "lua-language-server",
        "lua-check",
        "json-lsp",
        "jsonlint",
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        "chrome",
      },
    },
  },
}
