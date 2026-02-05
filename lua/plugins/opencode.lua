return {
  "NickvanDyke/opencode.nvim",
  dependencies = {
    { "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
  },
  config = function()
    local opencode_port = tonumber(os.getenv("NVIM_OPENCODE_PORT"))
    ---@type opencode.Opts
    vim.g.opencode_opts = {
      port = opencode_port,
    }

    vim.o.autoread = true

    vim.keymap.set({ "n", "x" }, "<leader>oa", function()
      require("opencode").ask("@this: ", { submit = true })
    end, { desc = "Ask opencode" })

    vim.keymap.set({ "n", "x" }, "<leader>ox", function()
      require("opencode").select()
    end, { desc = "Execute opencode action…" })

    vim.keymap.set({ "n", "x" }, "<leader>oo", function()
      return require("opencode").operator("@this ")
    end, { expr = true, desc = "Add range to opencode" })

    vim.keymap.set("n", "<leader>ol", function()
      return require("opencode").operator("@this ") .. "_"
    end, { expr = true, desc = "Add line to opencode" })

    vim.keymap.set("n", "<leader>ou", function()
      require("opencode").command("session.half.page.up")
    end, { desc = "opencode half page up" })

    vim.keymap.set("n", "<leader>od", function()
      require("opencode").command("session.half.page.down")
    end, { desc = "opencode half page down" })
  end,
}
