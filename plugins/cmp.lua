return {
  "hrsh7th/nvim-cmp",
  -- override the options table that is used in the `require("cmp").setup()` call
  opts = function(_, opts)
    -- opts parameter is the default options table
    -- the function is lazy loaded so cmp is able to be required
    -- local cmp = require "cmp"
    -- modify the sources part of the options table
    -- opts.sources = cmp.config.sources {
    --   { name = "tabnine-nvim", priority = 1000 },
    --   { name = "nvim_lsp", priority = 900 },
    --   { name = "nvim_lua", priority = 800 },
    --   { name = "luasnip", priority = 750 },
    --   { name = "buffer", priority = 500 },
    --   { name = "path", priority = 250 },
    -- }
    --
    -- return the new table to be used
    -- opts.mapping = {
    --   ["<C-p>"] = cmp.mapping.select_prev_item(),
    --   ["<C-n>"] = cmp.mapping.select_next_item(),
    -- }

    return opts
  end,
}
