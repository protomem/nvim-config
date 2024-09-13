return {
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = vim.list_extend(opts.sources or {}, {
        nls.builtins.formatting.clang_format,
      })
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "clang-format" } },
  },
}
