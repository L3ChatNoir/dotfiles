MiniDeps.add({
    source='nvim-tree/nvim-tree.lua'
})

require("nvim-tree").setup({
    view = {
        width = 32,
        side = 'right',
        preserve_window_proportions = true,
    },
    renderer = {
        full_name = false,
        root_folder_label = ":t",
        indent_markers = {
            enable = true,
            inline_arrows = false
        },
        icons = {
            show = {
                file = false,
                folder = false,
                folder_arrow = true,
                git = true,
            },
            git_placement = 'after',
        }
    }
})

