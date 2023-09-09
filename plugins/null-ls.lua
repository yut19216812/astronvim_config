return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.black,
      null_ls.builtins.formatting.isort,
      null_ls.builtins.formatting.jq,
      null_ls.builtins.diagnostics.pyproject_flake8,
      -- null_ls.builtins.formatting.prettier,
      -- null_ls.builtins.diagnostics.eslint.with {
      --   prefer_local = "node_modules/.bin",
      -- },
    }
    config.root_dir = require("null-ls.utils").root_pattern(".venv", "node_modules", ".null-ls-root", ".git")
    return config -- return final config table
  end,
}
