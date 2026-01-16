-- ~/.config/nvim/lua/plugins/colorscheme.lua
-- NOTE:
-- Uncomment the vim.cmd.colorshcheme line to set that theme as default
-- make sure you comment the line everywhere else.
-- The theme background often uses the vim.o.background="dark" setting
-- This has been set in the lua/config/options.lua file, change it there for the light or dark variant of the default theme

return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_background = "medium" -- soft, medium, or hard
      vim.g.gruvbox_material_better_performance = 1
      -- vim.cmd.colorscheme("gruvbox-material")
    end,
  },
  {
    "zenbones-theme/zenbones.nvim",
    -- Optionally install Lush. Allows for more configuration or extending the colorscheme
    -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
    -- In Vim, compat mode is turned on as Lush only works in Neovim.
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    -- you can set set configuration options here
    -- config = function()
    --     vim.g.zenbones_darken_comments = 45
    --     vim.cmd.colorscheme('zenbones')
    -- end
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      -- vim.cmd("colorscheme rose-pine")
    end,
  },
  {
    "maxmx03/solarized.nvim",
    lazy = false,
    priority = 1000,
    ---@type solarized.config
    opts = {},
    config = function(_, opts)
      vim.o.termguicolors = true
      vim.o.background = "light"
      require("solarized").setup(opts)
      -- vim.cmd.colorscheme("solarized")
    end,
  },
  {
    "thesimonho/kanagawa-paper.nvim",
    lazy = false, -- load immediately
    priority = 1000, -- load before almost everything else
    opts = {
      -- Optional: your preferred tweaks (all are optional)
      transparent = false, -- set true if you want no background
      dim_inactive = false, -- dim inactive windows (try true for a nice effect)
      undercurl = true, -- undercurl for errors/warnings
      gutter = false, -- highlight left gutter background
      diag_background = true, -- background for diagnostic virtual text
      terminal_colors = true, -- use theme colors in terminal
      cache = false, -- set true for faster startup (rebuild with :KanagawaPaperCache)
      -- styles = { ... },      -- customize italic/bold for comments, functions, etc.
      -- colors = { ... },      -- override specific colors if needed
    },
    config = function(_, opts)
      -- Force dark background to ensure the dark variant loads
      vim.o.background = "dark"
      require("kanagawa-paper").setup(opts)
      -- Load the dark variant explicitly (recommended for reliability)
      vim.cmd("colorscheme kanagawa-paper")
    end,
  },
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("github-theme").setup({})

      -- vim.cmd("colorscheme github_dark")
    end,
  },
}
