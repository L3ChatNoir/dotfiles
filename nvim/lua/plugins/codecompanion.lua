vim.pack.add({ "https://www.github.com/nvim-lua/plenary.nvim" })
vim.pack.add({ {
  src = "https://www.github.com/olimorris/codecompanion.nvim",
  version = vim.version.range("^19.0.0")
} })

-- Somewhere in your config
require("codecompanion").setup({
    interactions = {
        chat = {
            adapter = {
                name = "gemini",
                model = "gemini-3-flash-preview"
            },
        }
    },
    display = {
        chat = {
            window = {
                position = "right",
            }
        }
    }
})

vim.keymap.set({ "n", "v" }, "<LocalLeader>A", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<LocalLeader>a", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true })
vim.keymap.set("v", "<LocalLeader>ga", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true })
