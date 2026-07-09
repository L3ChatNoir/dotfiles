-- General settings ######################
vim.cmd [[filetype plugin indent on]]
vim.opt.syntax = 'on'
vim.opt.clipboard:append { 'unnamed', 'unnamedplus' } -- System Clipboard
vim.opt.mouse = 'a'

-- Tab --
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true


-- UI & Behavior #########################
vim.opt.visualbell = true
vim.opt.encoding = 'utf-8'
vim.opt.wrap = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.ruler = true

-- Number --
vim.opt.number = true
vim.opt.numberwidth = 1
vim.opt.relativenumber = true

-- Cursor --
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Command-line & Completion #############
vim.opt.wildmenu = true
vim.opt.wildmode = 'list:longest'
vim.opt.hidden = true

-- Search --
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Feedback & Info --
vim.opt.showmode = true
vim.opt.showcmd = true
vim.opt.showmatch = true

-- MISC ##################################
vim.diagnostic.config({
    virtual_text = true,
    severity_sort = true,
})
