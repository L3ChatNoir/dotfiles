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

vim.keymap.set("n", "<leader>f", ":Pick files<CR>", { desc = 'Open file finder' })
vim.keymap.set("n", "<leader>b", ":Pick buffers<CR>", { desc = 'Open buffers finder' })
vim.keymap.set("n", "<leader>g", ":Pick grep_live<CR>", { desc = 'Open buffers finder' })

require("mini.extra").setup()           -- extra

vim.keymap.set("n", "<leader>d", function() MiniExtra.pickers.diagnostic() end, { desc = "Mini Picker Diagnostics" })
vim.keymap.set("n", "<leader>k", function() MiniExtra.pickers.keymaps() end, { desc = 'Search keymaps' })

require('mini.trailspace').setup()      -- view trailspace TODO: Use hipatterns to show and auto_cmd to trim
require('mini.statusline').setup()
require('mini.files').setup({
    options = {
        permanent_delete = false,
    },
    windows = {
        preview= true,
    }
})

local minifiles_toggle = function(...)
    if not MiniFiles.close() then MiniFiles.open(...) end
end
vim.keymap.set("n", "<leader>t", minifiles_toggle, { desc = 'Open/Close file explorer' })

require('mini.notify').setup({
    lsp_progress = {
        enable = false,
}
})

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
