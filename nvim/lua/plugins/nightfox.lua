MiniDeps.add({
    source='EdenEast/nightfox.nvim'
})
require('nightfox').setup({
    palettes = {
        carbonfox = {
            blue = "#6050DC",
            magenta = "#875fff",
            green = "#90EE90",

            comment = "#7F7F7F",

            bg = "#000000",
            bg1 = "#101010",
            bg2 = "#292929",
            bg3 = "#424242",
            bg4 = "#666666",

            fg = "#FFFFFF",
            fg1 = "#F4F4F4",
            fg2 = "#CACACA",
            fg3 = "#999999",
        }
    }
})

-- Other colorscheme
-- MiniDeps.add({
--     source="nyoom-engineering/oxocarbon.nvim"
-- })
-- MiniDeps.add({
--     source='daltonmenezes/aura-theme',
-- })
--
-- local path = MiniDeps.config.path.package .. '/pack/deps/opt/aura-theme'
-- vim.opt.runtimepath:append(path .. '/packages/neovim')
