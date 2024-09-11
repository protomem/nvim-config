return {
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      local extra_args = { "--dialect", "postgres" }
      opts.sources = vim.list_extend(opts.sources or {}, {
        nls.builtins.diagnostics.sqlfluff.with({ extra_args = extra_args }),
        nls.builtins.formatting.sqlfluff.with({ extra_args = extra_args }),
      })
    end,
  },
}
