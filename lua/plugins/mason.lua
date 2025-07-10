return {
  "mason-org/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    require("mason").setup()
    
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",
        "ts_ls",
        "intelephense",
        "tailwindcss",
      },
      automatic_installation = true,
    })
    
    require("mason-tool-installer").setup({
      ensure_installed = {
        "stylua",
        "prettier",
        "prettierd",
      },
      auto_update = false,
      run_on_start = true,
    })
  end,
}
