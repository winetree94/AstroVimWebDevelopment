return {
  colorscheme = "nightfox",
  lsp = {
    formatting = {
      -- control auto formatting on save
      -- format_on_save = {
      --   enabled = true, -- enable or disable format on save globally
      --   allow_filetypes = { -- enable format on save for specified filetypes only
      --     -- "go",
      --   },
      --   ignore_filetypes = { -- disable format on save for specified filetypes
      --     -- "python",
      --   },
      -- },
      timeout_ms = 5000, -- default format timeout
      -- disable formatting capabilities for the listed language servers
      -- disable lua_ls formatting capability if you want to use StyLua to format your lua code
      -- eslint 에 의한 format 을 사용할 것이므로 비활성화 처리
      disabled = {
        "prettier",
        "tsserver",
        "html",
      },
    },
  },
  -- Configure require("lazy").setup() options
  -- lazy = {
  --   defaults = { lazy = true },
  --   performance = {
  --     rtp = {
  --       -- customize default disabled vim plugins
  --       disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
  --     },
  --   },
  -- },
  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- anything that doesn't fit in the normal config locations above can go here
  -- polish = function()
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
  -- end,
}
