-- Alucard Theme for Neovim
-- Light theme variant of Dracula

local M = {}

-- Alucard color palette
local colors = {
  -- Base colors
  bg = "#FFFBEB", -- Background
  bg_dark = "#CECCC0", -- Background Dark
  bg_darker = "#BCBAB3", -- Background Darker
  bg_light = "#DEDCCF", -- Background Light
  bg_lighter = "#ECE9DF", -- Background Lighter
  fg = "#1F1F1F", -- Foreground

  -- UI colors
  current_line = "#6C664B", -- Current Line
  selection = "#CFCFDE", -- Selection
  comment = "#6C664B", -- Comment

  -- Syntax colors
  red = "#CB3A2A", -- Red
  orange = "#A34D14", -- Orange
  yellow = "#846E15", -- Yellow
  green = "#14710A", -- Green
  cyan = "#036A96", -- Cyan
  purple = "#644AC9", -- Purple
  pink = "#A3144D", -- Pink

  -- ANSI colors
  ansi_black = "#FFFBEB",
  ansi_red = "#CB3A2A",
  ansi_green = "#14710A",
  ansi_yellow = "#846E15",
  ansi_blue = "#644AC9",
  ansi_magenta = "#A3144D",
  ansi_cyan = "#036A96",
  ansi_white = "#1F1F1F",
  ansi_bright_black = "#6C664B",
  ansi_bright_red = "#D74C3D",
  ansi_bright_green = "#198D0C",
  ansi_bright_yellow = "#9E841A",
  ansi_bright_blue = "#7862D0",
  ansi_bright_magenta = "#BF185A",
  ansi_bright_cyan = "#047FB4",
  ansi_bright_white = "#2C2B31",

  -- Additional UI colors
  none = "NONE",
}

-- Terminal colors
function M.terminal_colors()
  vim.g.terminal_color_0 = colors.ansi_black
  vim.g.terminal_color_1 = colors.ansi_red
  vim.g.terminal_color_2 = colors.ansi_green
  vim.g.terminal_color_3 = colors.ansi_yellow
  vim.g.terminal_color_4 = colors.ansi_blue
  vim.g.terminal_color_5 = colors.ansi_magenta
  vim.g.terminal_color_6 = colors.ansi_cyan
  vim.g.terminal_color_7 = colors.ansi_white
  vim.g.terminal_color_8 = colors.ansi_bright_black
  vim.g.terminal_color_9 = colors.ansi_bright_red
  vim.g.terminal_color_10 = colors.ansi_bright_green
  vim.g.terminal_color_11 = colors.ansi_bright_yellow
  vim.g.terminal_color_12 = colors.ansi_bright_blue
  vim.g.terminal_color_13 = colors.ansi_bright_magenta
  vim.g.terminal_color_14 = colors.ansi_bright_cyan
  vim.g.terminal_color_15 = colors.ansi_bright_white
end

-- Highlight groups
function M.highlights()
  local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- Editor highlights
  hl("Normal", { fg = colors.fg, bg = colors.bg })
  hl("NormalFloat", { fg = colors.fg, bg = colors.bg_lighter })
  hl("ColorColumn", { bg = colors.bg_light })
  hl("Cursor", { fg = colors.bg, bg = colors.fg })
  hl("CursorLine", { bg = colors.current_line })
  hl("CursorLineNr", { fg = colors.fg, bg = colors.current_line })
  hl("LineNr", { fg = colors.comment })
  hl("Directory", { fg = colors.purple })
  hl("ErrorMsg", { fg = colors.red })
  hl("VertSplit", { fg = colors.bg_light })
  hl("Folded", { fg = colors.comment, bg = colors.bg_light })
  hl("FoldColumn", { fg = colors.comment, bg = colors.bg })
  hl("SignColumn", { fg = colors.fg, bg = colors.bg })
  hl("IncSearch", { fg = colors.bg, bg = colors.orange })
  hl("Substitute", { fg = colors.bg, bg = colors.yellow })
  hl("MatchParen", { fg = colors.fg, bg = colors.selection })
  hl("ModeMsg", { fg = colors.fg })
  hl("MoreMsg", { fg = colors.green })
  hl("NonText", { fg = colors.comment })
  hl("Pmenu", { fg = colors.fg, bg = colors.bg_light })
  hl("PmenuSel", { fg = colors.fg, bg = colors.selection })
  hl("PmenuSbar", { bg = colors.bg_light })
  hl("PmenuThumb", { bg = colors.selection })
  hl("Question", { fg = colors.purple })
  hl("Search", { fg = colors.bg, bg = colors.yellow })
  hl("SpecialKey", { fg = colors.comment })
  hl("StatusLine", { fg = colors.fg, bg = colors.bg_light })
  hl("StatusLineNC", { fg = colors.comment, bg = colors.bg_light })
  hl("TabLine", { fg = colors.comment, bg = colors.bg_light })
  hl("TabLineFill", { bg = colors.bg_light })
  hl("TabLineSel", { fg = colors.fg, bg = colors.bg })
  hl("Title", { fg = colors.purple })
  hl("Visual", { bg = colors.selection })
  hl("VisualNOS", { bg = colors.selection })
  hl("WarningMsg", { fg = colors.orange })
  hl("WildMenu", { fg = colors.bg, bg = colors.purple })

  -- Syntax highlights based on Dracula spec
  hl("Comment", { fg = colors.comment, italic = true })
  hl("Constant", { fg = colors.orange })
  hl("String", { fg = colors.green })
  hl("Character", { fg = colors.green })
  hl("Number", { fg = colors.orange })
  hl("Boolean", { fg = colors.orange })
  hl("Float", { fg = colors.orange })
  hl("Identifier", { fg = colors.fg })
  hl("Function", { fg = colors.yellow })
  hl("Statement", { fg = colors.pink })
  hl("Conditional", { fg = colors.pink })
  hl("Repeat", { fg = colors.pink })
  hl("Label", { fg = colors.pink })
  hl("Operator", { fg = colors.pink })
  hl("Keyword", { fg = colors.pink })
  hl("Exception", { fg = colors.pink })
  hl("PreProc", { fg = colors.pink })
  hl("Include", { fg = colors.pink })
  hl("Define", { fg = colors.pink })
  hl("Macro", { fg = colors.pink })
  hl("PreCondit", { fg = colors.pink })
  hl("Type", { fg = colors.purple })
  hl("StorageClass", { fg = colors.pink })
  hl("Structure", { fg = colors.purple })
  hl("Typedef", { fg = colors.purple })
  hl("Special", { fg = colors.cyan })
  hl("SpecialChar", { fg = colors.cyan })
  hl("Tag", { fg = colors.cyan })
  hl("Delimiter", { fg = colors.fg })
  hl("SpecialComment", { fg = colors.comment, italic = true })
  hl("Debug", { fg = colors.red })
  hl("Underlined", { underline = true })
  hl("Ignore", { fg = colors.comment })
  hl("Error", { fg = colors.red })
  hl("Todo", { fg = colors.orange, bold = true })

  -- Treesitter highlights
  hl("@attribute", { fg = colors.cyan })
  hl("@boolean", { fg = colors.orange })
  hl("@character", { fg = colors.green })
  hl("@comment", { fg = colors.comment, italic = true })
  hl("@conditional", { fg = colors.pink })
  hl("@constant", { fg = colors.orange })
  hl("@constant.builtin", { fg = colors.orange })
  hl("@constant.macro", { fg = colors.orange })
  hl("@constructor", { fg = colors.purple })
  hl("@error", { fg = colors.red })
  hl("@exception", { fg = colors.pink })
  hl("@field", { fg = colors.fg })
  hl("@float", { fg = colors.orange })
  hl("@function", { fg = colors.yellow })
  hl("@function.builtin", { fg = colors.cyan })
  hl("@function.macro", { fg = colors.yellow })
  hl("@include", { fg = colors.pink })
  hl("@keyword", { fg = colors.pink })
  hl("@keyword.function", { fg = colors.pink })
  hl("@keyword.operator", { fg = colors.pink })
  hl("@keyword.return", { fg = colors.pink })
  hl("@label", { fg = colors.pink })
  hl("@method", { fg = colors.yellow })
  hl("@namespace", { fg = colors.purple })
  hl("@none", { fg = colors.fg })
  hl("@number", { fg = colors.orange })
  hl("@operator", { fg = colors.pink })
  hl("@parameter", { fg = colors.fg })
  hl("@parameter.reference", { fg = colors.fg })
  hl("@property", { fg = colors.fg })
  hl("@punctuation.delimiter", { fg = colors.fg })
  hl("@punctuation.bracket", { fg = colors.fg })
  hl("@punctuation.special", { fg = colors.cyan })
  hl("@repeat", { fg = colors.pink })
  hl("@string", { fg = colors.green })
  hl("@string.regex", { fg = colors.cyan })
  hl("@string.escape", { fg = colors.cyan })
  hl("@symbol", { fg = colors.orange })
  hl("@tag", { fg = colors.cyan })
  hl("@tag.attribute", { fg = colors.yellow })
  hl("@tag.delimiter", { fg = colors.fg })
  hl("@text", { fg = colors.fg })
  hl("@text.strong", { bold = true })
  hl("@text.emphasis", { italic = true })
  hl("@text.underline", { underline = true })
  hl("@text.strike", { strikethrough = true })
  hl("@text.title", { fg = colors.purple })
  hl("@text.literal", { fg = colors.green })
  hl("@text.uri", { fg = colors.cyan, underline = true })
  hl("@type", { fg = colors.purple })
  hl("@type.builtin", { fg = colors.purple, italic = true })
  hl("@variable", { fg = colors.fg })
  hl("@variable.builtin", { fg = colors.purple })

  -- LSP highlights
  hl("LspReferenceText", { bg = colors.selection })
  hl("LspReferenceRead", { bg = colors.selection })
  hl("LspReferenceWrite", { bg = colors.selection })
  hl("DiagnosticError", { fg = colors.red })
  hl("DiagnosticWarn", { fg = colors.orange })
  hl("DiagnosticInfo", { fg = colors.cyan })
  hl("DiagnosticHint", { fg = colors.purple })
  hl("DiagnosticUnderlineError", { undercurl = true, sp = colors.red })
  hl("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.orange })
  hl("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.cyan })
  hl("DiagnosticUnderlineHint", { undercurl = true, sp = colors.purple })

  -- Git highlights
  hl("GitSignsAdd", { fg = colors.green })
  hl("GitSignsChange", { fg = colors.orange })
  hl("GitSignsDelete", { fg = colors.red })
  hl("DiffAdd", { fg = colors.green, bg = colors.bg_light })
  hl("DiffChange", { fg = colors.orange, bg = colors.bg_light })
  hl("DiffDelete", { fg = colors.red, bg = colors.bg_light })
  hl("DiffText", { fg = colors.fg, bg = colors.bg_light })

  -- Telescope highlights
  hl("TelescopeNormal", { fg = colors.fg, bg = colors.bg })
  hl("TelescopeBorder", { fg = colors.comment })
  hl("TelescopeSelection", { bg = colors.selection })
  hl("TelescopeSelectionCaret", { fg = colors.purple })
  hl("TelescopeMultiSelection", { bg = colors.current_line })
  hl("TelescopeMatching", { fg = colors.yellow })

  -- NvimTree highlights
  hl("NvimTreeNormal", { fg = colors.fg, bg = colors.bg })
  hl("NvimTreeFolderIcon", { fg = colors.purple })
  hl("NvimTreeFolderName", { fg = colors.purple })
  hl("NvimTreeOpenedFolderName", { fg = colors.purple, bold = true })
  hl("NvimTreeEmptyFolderName", { fg = colors.comment })
  hl("NvimTreeRootFolder", { fg = colors.purple, bold = true })
  hl("NvimTreeSpecialFile", { fg = colors.yellow })
  hl("NvimTreeGitDirty", { fg = colors.orange })
  hl("NvimTreeGitNew", { fg = colors.green })
  hl("NvimTreeGitDeleted", { fg = colors.red })
end

-- Setup function
function M.setup()
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "alucard"

  M.terminal_colors()
  M.highlights()
end

-- Return the plugin configuration
return {
  name = "alucard",
  dir = vim.fn.stdpath("config") .. "/lua/plugins",
  lazy = false,
  priority = 1000,
  config = function()
    M.setup()
  end,
}