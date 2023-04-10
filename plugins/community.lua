return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

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
  -- 포커스된 코드 외에 dimm 처리
  -- :Twilight
  {
    import = "astrocommunity.color.twilight-nvim",
  },
  -- Refactoring 자동화
  {
    import = "astrocommunity.editing-support.refactoring-nvim",
  },
  -- 코드 이동
  {
    import = "astrocommunity.motion.mini-move",
  },
  -- typescript pack
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
