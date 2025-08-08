-- General settings --
vim.opt.compatible = false
vim.cmd [[filetype plugin indent on]]
vim.opt.syntax = 'on'
vim.opt.clipboard:append { 'unnamed', 'unnamedplus' } -- System Clipboard

-- Tab --
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Cursor --
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Number --
vim.opt.number = true
vim.opt.numberwidth = 1
vim.opt.relativenumber = true

-- Ruler --
vim.opt.ruler = true

-- Search --
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- UI & Behavior --
vim.opt.visualbell = true
vim.opt.encoding = 'utf-8'
vim.opt.modelines = 0
vim.opt.wrap = true
vim.opt.smartindent = true
vim.opt.expandtab = true

-- Command-line & Completion --
vim.opt.wildmenu = true
vim.opt.wildmode = 'list:longest'
vim.opt.hidden = true

-- Feedback & Info --
vim.opt.showmode = true
vim.opt.showcmd = true
vim.opt.showmatch = true

-- MISC --
vim.opt.mouse = 'a'
