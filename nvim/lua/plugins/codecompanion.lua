vim.pack.add({ "https://www.github.com/nvim-lua/plenary.nvim" })
vim.pack.add({{
  src = "https://www.github.com/olimorris/codecompanion.nvim",
  version = vim.version.range("^19.0.0")
}})

require("codecompanion").setup({
    interactions = {
        chat = {
            adapter = {
                -- name = "gemini",
                -- model = "gemini-3-flash-preview"
                name = "openrouter",
                model = "cohere/north-mini-code:free",
            },
            slash_commands = {
                ["file"] = {
                    opts = {
                        provider = "mini_pick",
                    },
                },
            },
            opts = {
                completion_provider = "default",
            },
        }
    },
    display = {
        chat = {
            window = {
                position = "right",
            },
        fold_context = true,
        fold_reasoning = true,
        show_reasoning = true,
}
    }
})

vim.keymap.set({ "n", "v" }, "<LocalLeader>A", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<LocalLeader>a", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true })
vim.keymap.set("v", "<LocalLeader>ga", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true })
