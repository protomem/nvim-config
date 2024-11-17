return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "markdown",
        "markdown_inline",

        "yaml",
        "toml",
        "json",

        "go",
        "gomod",
        "gowork",
        "gosum",
        "cpp",
        "cmake",
        "make",
      },

      highlight = { enable = true },
      indent = { enable = true },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
  },

  {
    "echasnovski/mini.pairs",
    version = "*",
    config = function()
      require("mini.pairs").setup()
    end,
  },

  {
    "nvimtools/none-ls.nvim",
    config = function()
      local nls = require("null-ls")

      local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

      local exclude_filename = { "premake5.lua" }
      local function is_excluded(filename)
        for _, v in pairs(exclude_filename) do
          if filename == v then
            return true
          end
        end
      end

      nls.setup({
        on_attach = function(client, bufnr)
          local bufname = vim.fn.expand("%")
          if client.supports_method("textDocument/formatting") and not is_excluded(bufname) then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
              group = augroup,
              buffer = bufnr,
              callback = function()
                vim.lsp.buf.format({ async = false })
              end,
            })
          end
        end,

        sources = {
          -- Lua
          nls.builtins.formatting.stylua,

          -- C/C++
          nls.builtins.formatting.clang_format,

          -- Go
          nls.builtins.formatting.gofumpt,
          nls.builtins.diagnostics.staticcheck,
        },
      })
    end,
  },

  {
    "Exafunction/codeium.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({})
    end,
  },
}
