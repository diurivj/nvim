return {
  "stevearc/oil.nvim",
  opts = {},
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  config = function()
    require("oil").setup({
      default_file_explorer = true,
      columns = { "icon" },
      view_options = {
        show_hidden = true,
      },
    })
    vim.keymap.set("n", "<leader>pv", "<cmd>Oil<cr>", { desc = "Open parent directory" })
  end,
}
