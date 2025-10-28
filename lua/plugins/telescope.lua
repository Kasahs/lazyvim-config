-- ~/.config/nvim/lua/plugins/telescope.lua
return {
  "nvim-telescope/telescope.nvim",
  -- LazyVim already passes the current opts table to this function
  opts = function(_, opts)
    -- Ensure defaults table exists
    opts.defaults = opts.defaults or {}

    -- Merge our ignore patterns into the existing list (if any)
    opts.defaults.file_ignore_patterns = vim.tbl_extend("force", opts.defaults.file_ignore_patterns or {}, {
      -- ==== Folders (whole directory) ====
      "^node_modules/", -- leading ^ forces full match
      "^build/",
      "^dist/",
      "^vendor/",
      "^.git/",

      -- ==== Files ====
      "%.lock$",
      "%.env$",
      "%.log$",

      -- ==== Sub-folder patterns (everything inside) ====
      "target/.*",
      "%.git/.*",
    })

    return opts
  end,
}
