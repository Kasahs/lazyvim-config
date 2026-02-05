return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles", "DiffviewFileHistory" },
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- Explicitly ensure icons are loaded
  opts = {
    enhanced_diff_hl = true, -- High-quality syntax highlighting in diffs
    use_icons = true,
  },
  keys = {
    { "<leader>gv", "<cmd>DiffviewOpen<cr>", desc = "Diffview Open" },
    { "<leader>gV", "<cmd>DiffviewClose<cr>", desc = "Diffview Close" },
    { "<leader>gH", "<cmd>DiffviewFileHistory %<cr>", desc = "Current File History" },
  },
}
