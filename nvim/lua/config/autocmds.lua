vim.api.nvim_create_augroup("AutoFormat", {})

vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = { "*.py" },
    desc = "Auto-format Python files after saving",
    callback = function()
        local fileName = vim.api.nvim_buf_get_name(0)
        vim.cmd(":silent !ruff check --fix --silent " .. fileName)
        vim.cmd(":silent !ruff format --silent " .. fileName)
        vim.cmd(":silent !ruff clean" .. fileName)
    end,
    group = "AutoFormat",
})

vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = { "*.c", "*.h" },
    desc = "Auto-format C files after saving",
    callback = function()
        local fileName = vim.api.nvim_buf_get_name(0)
        vim.cmd(":silent !clang-format -i --fallback-style GNU --style file " .. fileName)
    end,
    group = "AutoFormat",
})
