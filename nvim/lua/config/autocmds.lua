vim.api.nvim_create_autocmd("BufWritePost", {
    pattern = { "*.py" },
    desc = "Auto-format Python files after saving",
    callback = function()
        local fileName = vim.api.nvim_buf_get_name(0)
        vim.cmd(":silent !autoflake --in-place --remove-all-unused-imports --remove-unused-variables " .. fileName)
        vim.cmd(":silent !black --line-length 79 --preview -q " .. fileName)
        vim.cmd(":silent !isort --profile black --float-to-top -q " .. fileName)
        vim.cmd(":silent !docformatter --in-place --black " .. fileName)
    end,
    group = format,
})
