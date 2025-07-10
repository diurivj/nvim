return {
  "saghen/blink.cmp",
  dependencies = {},
  version = "1.*",
  opts = {
    keymap = {
      preset = "default",
      ["<K>"] = { "show_documentation", "hide_documentation" },
    },
    appearance = {
      nerd_font_variant = "mono",
    },
    completion = {
      menu = {
        border = "rounded", -- or 'single', 'double', etc.
        winhighlight = "Normal:BlinkCmpMenu,FloatBorder:BlinkCmpMenuBorder,CursorLine:BlinkCmpMenuSelection,Search:None",
        draw = {
          columns = { { "kind_icon" }, { "label", "label_description", gap = 1 }, { "kind" } },
        },
      },
      documentation = {
        window = {
          border = "rounded",
          scrollbar = false,
          winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,EndOfBuffer:BlinkCmpDoc",
        },
        auto_show = false,
        auto_show_delay_ms = 500,
      },
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
  opts_extend = { "sources.default" },
}
