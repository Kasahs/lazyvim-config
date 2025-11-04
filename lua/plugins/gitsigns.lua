return {
  -- Override gitsigns to hide gutter signs
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = "" }, -- Hide +
        change = { text = "" }, -- Hide ~
        delete = { text = "" }, -- Hide _
        topdelete = { text = "" }, -- Hide top delete
        changedelete = { text = "" }, -- Hide ~_
        untracked = { text = "" }, -- Hide ? (if enabled)
      },
      signcolumn = true, -- Keep column open for diagnostics
      -- Optional: keep other features
      current_line_blame = false,
      -- numhl = false,  -- optional: disable number highlighting
      -- linehl = false, -- optional: disable line highlighting
    },
  },
}
