-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local function toggle_blink_cmp()
  local blink = require("blink.cmp")
  vim.b.blink_enabled = not vim.b.blink_enabled
  if not vim.b.blink_enabled then
    blink.hide() -- Hide any open menu immediately
  end
  vim.notify("blink.cmp " .. (vim.b.blink_enabled and "enabled" or "disabled"))
end
vim.keymap.set({ "n" }, "<leader>tc", toggle_blink_cmp, { desc = "Toggle blink.cmp" })
