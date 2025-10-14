-- Python
vim.lsp.config['ruff'] = {
  -- Command and arguments to start the server.
  cmd = { 'ruff', 'server' },
  filetypes = { 'python' },
  root_markers = { 'pyproject.toml', 'ruff.toml', '.ruff.toml', '.git' },
  settings = {}
}
vim.lsp.enable('ruff')
