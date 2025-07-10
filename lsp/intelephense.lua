local blink = require("blink.cmp")

return {
  cmd = { "intelephense", "--stdio" },
  filetypes = { "php", "blade" },
  root_markers = { "composer.json", ".git" },
  settings = {
    intelephense = {
      files = {
        maxSize = 1000000,
        exclude = {
          "**/.git/**",
          "**/.svn/**",
          "**/.hg/**",
          "**/CVS/**",
          "**/.DS_Store/**",
          "**/node_modules/**",
          "**/bower_components/**",
          "**/htdocs_customshops/**",
          "**/htdocs_gearman/**",
          "**/htdocs/assets/dist/**",
          "**/tmp/**",
          "**vendor/*/{!(phpunit)/**}",
          "translations/**",
          "**/.phan/**",
          "**/cron.d/**",
          "**/generated/**",
          "**/Generated/**",
          "**/modules/css/**",
          "**/__modules__*__src__/**",
          "vendor/etsy/module-*/**",
        },
      },
      maxMemory = 10192,
    },
  },
  capabilities = vim.tbl_deep_extend(
    "force",
    {},
    vim.lsp.protocol.make_client_capabilities(),
    blink.get_lsp_capabilities()
  ),
}
