vim.api.nvim_create_augroup("AutoFormat", {})

vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = { "*.py" },
    desc = "Auto-format Python files after saving",
    callback = function()
        local fileName = vim.api.nvim_buf_get_name(0)
        vim.cmd(":silent !autoflake --in-place --remove-all-unused-imports --remove-unused-variables " .. fileName)
        vim.cmd(":silent !ruff format --silent --line-length 79 --preview" .. fileName)
        vim.cmd(":silent !black --line-length 79 --preview -q " .. fileName)
        vim.cmd(":silent !isort --profile black --float-to-top -q " .. fileName)
        vim.cmd(":silent !docformatter --in-place --black " .. fileName)
        vim.cmd(":silent !ruff clean")
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
