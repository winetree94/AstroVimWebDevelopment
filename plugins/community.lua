return {
  --   -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  --   -- example of imporing a plugin, comment out to use it or add your own
  --   -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  --
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.nightfox" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.completion.copilot-lua" },
  {
    -- further customize the options set by the community
    "copilot.lua",
    opts = {
      suggestion = {
        keymap = {
          accept = "<C-l>",
          accept_word = false,
          accept_line = false,
          next = "<C-.>",
          prev = "<C-,>",
          dismiss = "<C/>",
        },
      },
    },
  },
  --   -- Refactoring 자동화
  {
    import = "astrocommunity.editing-support.refactoring-nvim",
  },
  --   -- -- 코드 이동
  {
    import = "astrocommunity.motion.mini-move",
  },
  --   -- Language Packs
  {
    import = "astrocommunity.pack.typescript",
  },
  {
    import = "astrocommunity.pack.tailwindcss",
  },
  {
    import = "astrocommunity.pack.markdown",
  },
  {
    import = "astrocommunity.pack.json",
  },
}
