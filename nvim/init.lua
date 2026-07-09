require("config.options")  -- Vim option
require("config.autocmds") -- Autocmds
require("config.keymaps")  -- Key mapping
require("config.lsp")      -- Langage Server Protocol
pcall(require, "secrets")  -- Secrets

-- Plugins
require('plugins.mini')          -- Mini
require('plugins.treesitter')    -- TreeSitter
require('plugins.nightfox')      -- Colorsheme
require('plugins.codecompanion') -- Colorsheme

vim.cmd("colorscheme carbonfox")
