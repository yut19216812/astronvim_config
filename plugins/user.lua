return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presunce.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "rafamadriz/neon",
    init = function()
      vim.g.neon_style = "dark"
      vim.g.neon_italic_comment = true
    end,
  },
}
