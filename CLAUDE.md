# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Neovim configuration using the Lazy.nvim plugin manager. The configuration follows a modular structure with clear separation of concerns between options, keymaps, and plugins.

## Architecture

- **Entry Point**: `init.lua` - Bootstraps the configuration by loading the lazy plugin manager
- **Configuration Structure**:
  - `lua/config/lazy.lua` - Sets up Lazy.nvim plugin manager with auto-installation and plugin loading
  - `lua/config/options.lua` - Core Neovim options and settings
  - `lua/config/keymaps.lua` - Custom keybindings (currently empty)
  - `lua/plugins/` - Plugin specifications (currently empty, using import structure)

## Code Style

- **Lua Formatting**: Uses StyLua with 2-space indentation and 120 column width (configured in `stylua.toml`)
- **Neovim Options**: Uses 4-space indentation for editing, expandtab enabled
- **Plugin Management**: Uses Lazy.nvim with automatic plugin updates enabled

## Key Configuration Details

- Lazy loading is disabled by default for custom plugins
- Plugin updates are automatically checked but notifications are disabled
- Several default RTP plugins are disabled for performance (gzip, tarPlugin, etc.)
- Uses system clipboard integration (`unnamedplus`)
- Undo file persistence is enabled
- Status line is disabled (`laststatus = 0`)

## Development Commands

```bash
# Format Lua code
stylua .

# No specific test/build commands - this is a configuration repository
```

## Plugin Structure

The configuration uses an import-based plugin structure where plugins are loaded from the `lua/plugins/` directory. Currently no plugins are defined, but the structure is set up for modular plugin organization.