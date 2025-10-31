-- ~/.config/nvim/lua/plugins/colorscheme.lua
return {
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_background = "medium" -- soft, medium, or hard
      vim.g.gruvbox_material_better_performance = 1
      vim.cmd.colorscheme("gruvbox-material")
    end,
  },
}
