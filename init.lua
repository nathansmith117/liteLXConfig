local core = require "core"
local command = require "core.command"
local keymap = require "core.keymap"
local config = require "core.config"
local style = require "core.style"
local os = require "os"

-- Set color theme.
core.reload_module("colors.gruvbox_dark")

-- Tabs.
config.indent_size = 4

-- Lsp.
local lspconfig = require "plugins.lsp.config"
lspconfig.clangd.setup()
lspconfig.pyright.setup()

-- Launching terminal and file explorer.
local terminalCommand = "kitty"
local fileExplorerCommand = "thunar"

-- Open terminal command.
command.add(nil, {
    ["opener:Open Terminal"] = function()
        os.execute(terminalCommand .. " &")
    end
})

-- Open file explorer command.
command.add(nil, {
    ["opener: Open File Explorer"] = function()
        os.execute(fileExplorerCommand .. " &")
    end
})

-- Keybinds for the opener thingy.
keymap.add {["ctrl+space"] = "opener:Open Terminal"}
keymap.add {["ctrl+shift+space"] = "opener: Open File Explorer"}
