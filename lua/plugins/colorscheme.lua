return {
  -- "projekt0n/github-nvim-theme",
  -- name = "github-theme",
  -- lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  -- priority = 1000, -- make sure to load this before all the other start plugins
  -- config = function()
  --   require("github-theme").setup({
  --     options = {
  --       -- transparent = true,
  --       -- im_inactive = true
  --     },
  --   })
  --
  --   vim.cmd("colorscheme github_dark_default")
  -- end,

  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme moonfly")
    end,
  },
}
