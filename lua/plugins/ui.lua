return {
  {
    "echasnovski/mini.statusline",
    version = "*",
    config = function()
      require("mini.statusline").setup()
    end,
  },

  -- {
  --   "akinsho/bufferline.nvim",
  --   event = "VeryLazy",
  --   keys = {
  --     { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
  --     { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
  --   },
  --   config = function()
  --     local bufferline = require("bufferline")
  --
  --     bufferline.setup({
  --       options = {
  --         mode = "tabs",
  --         style_preset = bufferline.style_preset.minimal,
  --         show_buffer_close_icons = false,
  --         show_close_icon = false,
  --       },
  --     })
  --   end,
  -- },

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
}
