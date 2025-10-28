return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      virtual_text = false,
      undercurl = true, -- This ensures squiggly lines stay enabled (default is true anyway).
    },
  },
}
