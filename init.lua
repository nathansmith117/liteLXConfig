local core = require "core"
local keymap = require "core.keymap"
local config = require "core.config"
local style = require "core.style"

-- Set color theme.
core.reload_module("colors.gruvbox_dark")

-- Tabs.
config.indent_size = 4

-- Lsp.
local lspconfig = require "plugins.lsp.config"
lspconfig.clangd.setup()
lspconfig.pyright.setup()
