return {
  {
    "echasnovski/mini.statusline",
    version = "*",
    config = function()
      require("mini.statusline").setup()
    end,
  },

  {
    "nanozuki/tabby.nvim",
    event = "VimEnter", -- if you want lazy load, see below
    -- dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("tabby").setup({
        preset = "tab_only",
      })
    end,
  },

  {
    "projekt0n/circles.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("circles").setup()
    end,
  },

  {
    "j-hui/fidget.nvim",
    opts = {
      notification = {
        window = {
          winblend = 0,
        },
      },
    },
  },
}
