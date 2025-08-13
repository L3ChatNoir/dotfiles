-- LAZY
require('plugins.lazy')

-- MINI
require('mini.icons').setup()
require('mini.indentscope').setup()     -- view indentation
require('mini.completion').setup()      -- autocompleton
require('mini.comment').setup()         -- comment using 'gcc'
require('mini.cursorword').setup()      -- cursorline :
require('mini.snippets').setup()
require('mini.git').setup()
require('mini.diff').setup()
require('mini.pairs').setup()           -- autopairs
require('mini.trailspace').setup()      -- view trailspace
require('mini.statusline').setup()

local hipatterns = require('mini.hipatterns')
hipatterns.setup({
  highlighters = {
    -- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
    fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
    hack  = { pattern = '%f[%w]()HACK()%f[%W]',  group = 'MiniHipatternsHack'  },
    todo  = { pattern = '%f[%w]()TODO()%f[%W]',  group = 'MiniHipatternsTodo'  },
    note  = { pattern = '%f[%w]()NOTE()%f[%W]',  group = 'MiniHipatternsNote'  },

    -- Highlight hex color strings (`#rrggbb`) using that color
    hex_color = hipatterns.gen_highlighter.hex_color(),
  },
})
--[[ Mini tabline don't support to move buffer, so don't use now
require('mini.tabline').setup({
    -- Show file icons (requires 'mini.icons')
    show_icons = true,

    -- Function which formats the tab label
    format = nil,

    -- Where to show tabpage
    -- values: 'left', 'right', 'none'
    tabpage_section = 'right',
})
--]]
-- LSP
require('lspconfig')
require("mason").setup()
--        -- ANSIBLE
--        "ansible-language-server",
--        "ansible-lint",
--        -- BASH
--        "bash-language-server",
--        "shellcheck",
--        -- PYTHON
--        "autoflake",
--        "autopep8",
--        "black",
--        "bandit",
--        "isort",
--        "pylint",
--        "pyright",
--        -- YAML
--        "yamllint",
require('mason-lspconfig').setup()

-- File explorer
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

-- Colorsheme --
vim.cmd("colorscheme carbonfox")
