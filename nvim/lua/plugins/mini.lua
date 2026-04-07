-- Mini

vim.pack.add({
    { src="https://github.com/nvim-mini/mini.nvim" }
})

require('mini.icons').setup()
require('mini.indentscope').setup()     -- view indentation
require('mini.completion').setup()      -- autocompletion
require('mini.snippets').setup()        -- autocompletion snippets
require('mini.comment').setup()         -- comment using 'gcc'
require('mini.cursorword').setup()      -- cursorline :
require('mini.git').setup()
require('mini.diff').setup()
require('mini.pairs').setup()           -- autopairs
require('mini.pick').setup()            -- fuzzy finder file
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
