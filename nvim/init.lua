require("config.options")    -- Vim option
require("config.autocmds")   -- Autocmds
require("config.keymaps")    -- Key mapping
require("config.lsp")        -- Langage Server Protocol

-- Plugins
require('plugins.mini') -- Mini
require('plugins.tree') -- File explorer
require('plugins.treesitter') -- TreeSitter
require('plugins.nightfox') -- Colorsheme

vim.cmd("colorscheme carbonfox")
