return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.completion.tabnine-nvim" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },

  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.colorscheme.nightfox-nvim", enabled = true },
  -- { import = "astrocommunity.colorscheme.catppuccin", enabled = false },
  -- { import = "astrocommunity.colorscheme.iceberg-vim" },
  { import = "astrocommunity.colorscheme.poimandres-nvim", enabled = true },

  { import = "astrocommunity.diagnostics.trouble-nvim" },
  -- { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
  { import = "astrocommunity.pack.typescript" },
  -- { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.terraform" },
  { import = "astrocommunity.pack.yaml" },
  -- {
  --   "nightfox.nvim",
  --   options = {
  --     styles = {
  --       comments = "italic",
  --       keywords = "bold",
  --       types = "italic,bold",
  --     },
  --   },
  -- },
}
