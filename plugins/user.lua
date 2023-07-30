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
  {
    "epwalsh/obsidian.nvim",
    lazy = true,
    -- event = { "BufReadPre $HOME/.obsidiant/**.md" },
    -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand':
    event = { "BufReadPre " .. vim.fn.expand "~" .. "/.obsidian/**.md" },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",

      -- Optional, for completion.
      "hrsh7th/nvim-cmp",

      -- Optional, for search and quick-switch functionality.
      "nvim-telescope/telescope.nvim",

      -- Optional, an alternative to telescope for search and quick-switch functionality.
      -- "ibhagwan/fzf-lua"

      -- Optional, another alternative to telescope for search and quick-switch functionality.
      -- "junegunn/fzf",
      -- "junegunn/fzf.vim"

      -- Optional, alternative to nvim-treesitter for syntax highlighting.
      "godlygeek/tabular",
      "preservim/vim-markdown",
    },
    opts = {
      dir = vim.fn.expand "~/" .. ".obsidian", -- no need to call 'vim.fn.expand' here

      -- see below for full list of options 👇
    },
    config = function(_, opts)
      require("obsidian").setup(opts)

      -- Optional, override the 'gf' keymap to utilize Obsidian's search functionality.
      -- see also: 'follow_url_func' config option below.
      vim.keymap.set("n", "gf", function()
        if require("obsidian").util.cursor_on_markdown_link() then
          return "<cmd>ObsidianFollowLink<CR>"
        else
          return "gf"
        end
      end, { noremap = false, expr = true })
    end,
  },
}
