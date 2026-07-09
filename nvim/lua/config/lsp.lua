vim.lsp.enable('ruff')
vim.lsp.enable('pyright')
vim.lsp.enable('clangd')
vim.lsp.enable('bashls')
vim.lsp.enable('html')
vim.lsp.enable('yamlls')
vim.lsp.enable('marksman')
vim.lsp.enable('lua-language-server')
vim.lsp.enable('tinymist')
vim.lsp.enable('ts_ls')
vim.lsp.enable('jdtls')


vim.keymap.set('n', 'grf', function() vim.lsp.buf.format() end, { desc = 'vim.lsp.buf.format()' })
vim.api.nvim_create_autocmd('BufWritePre', {
    pattern = '*',
    callback = function()
        local clients = vim.lsp.get_clients({ bufnr = 0 })
        if #clients > 0 then
            vim.lsp.buf.format({ async = false })
        end
    end,
    group = "AutoFormat",
})
