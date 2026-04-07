vim.pack.add({
    { src="https://github.com/EdenEast/nightfox.nvim" }
})

require('nightfox').setup({
    palettes = {
        carbonfox = {
            red = "#FF5577",
            green = "#90EE90",
            yellow = "#FFDD60",
            blue = "#6050DC",
            magenta = "#875fff",
            cyan = "#799FB6",
            orange = "#FF9966",

            comment = "#7F7F7F",

            bg = "#000000",
            bg1 = "#101010",
            bg2 = "#292929",
            bg3 = "#292929",
            bg4 = "#666666",

            fg = "#FFFFFF",
            fg1 = "#F4F4F4",
            fg2 = "#CACACA",
            fg3 = "#999999",
        }
    }
})
