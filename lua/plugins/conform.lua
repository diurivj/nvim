return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      "<leader>f",
      function()
        require("conform").format({ async = true }, function(err, did_edit)
          if not err and did_edit then
            vim.notify("Code formatted", vim.log.levels.INFO, { title = "Conform" })
          end
        end)
      end,
      mode = "",
      desc = "[F]ormat buffer",
    },
  },
  opts = {
    formatters_by_ft = {
      -- Lua
      lua = { "stylua" },

      -- Web technologies
      javascript = { "prettier", "prettierd", require_cwd = true, stop_after_first = true },
      typescript = { "prettier", "prettierd", require_cwd = true, stop_after_first = true },
      javascriptreact = { "prettier", "prettierd", require_cwd = true, stop_after_first = true },
      typescriptreact = { "prettier", "prettierd", require_cwd = true, stop_after_first = true },
      json = { "prettier", "prettierd", require_cwd = true, stop_after_first = true },
      jsonc = { "prettier", "prettierd", require_cwd = true, stop_after_first = true },
      yaml = { "prettier", "prettierd", require_cwd = true, stop_after_first = true },
      markdown = { "prettier", "prettierd", require_cwd = true, stop_after_first = true },
      html = { "prettier", "prettierd", require_cwd = true, stop_after_first = true },
      css = { "prettier", "prettierd", require_cwd = true, stop_after_first = true },
      scss = { "prettier", "prettierd", require_cwd = true, stop_after_first = true },
    },
    default_format_opts = {
      lsp_format = "fallback",
    },
    format_on_save = function(bufnr)
      -- Disable "format_on_save lsp_fallback" for languages that don't
      -- have a well standardized coding style. You can add additional
      -- languages here or re-enable it for the disabled ones.
      local disable_filetypes = { c = true, cpp = true }
      if disable_filetypes[vim.bo[bufnr].filetype] then
        return nil
      else
        return {
          timeout_ms = 500,
          lsp_format = "fallback",
        }
      end
    end,
  },
  init = function()
    vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
  end,
}
