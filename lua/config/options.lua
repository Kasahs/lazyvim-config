-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr-o:hor20,a:blinkwait700-blinkon400-blinkoff250"
-- NOTE: This sets the light or dark variant for selected colorscheme.
-- All colorscheme plugins are set in the lua/plugins/colorscheme.lua file.
-- We use vim.schedule to force the dark mode
vim.schedule(function()
  vim.o.background = "dark"
end)
