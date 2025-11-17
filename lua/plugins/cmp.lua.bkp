-- ~/.config/nvim/lua/plugins/blink.lua
return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    -- Supertab-like <Tab> mappings for blink.cmp
    opts.keymap = vim.tbl_extend("force", opts.keymap or {}, {
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
      ["<CR>"] = { "accept", "fallback" }, -- Enter to confirm
    })

    -- Optional: Enable fuzzy matcher for typo tolerance
    opts.fuzzy = {
      implementation = "lua", -- Or "frizbee" for Rust speed (needs cargo)
    }

    -- Optional: Use friendly-snippets (already in LazyVim)
    opts.snippets = {
      enabled = true,
      preset = "default",
    }

    -- Optional: Theme icons (for gruvbox-material)
    opts.appearance = vim.tbl_extend("force", opts.appearance or {}, {
      kind_icons = LazyVim.config.icons.kinds, -- Reuse LazyVim icons
    })
  end,
  event = { "InsertEnter", "CmdlineEnter" }, -- Load on demand
}
