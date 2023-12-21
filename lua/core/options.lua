local opt = vim.opt

-- Tab / Indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

-- Search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- Appearance
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.colorcolumn = "100"
opt.signcolumn = "yes"
opt.scrolloff = 10
opt.completeopt = "menuone,noinsert,noselect"

-- Behaviour
opt.mouse = "a"
opt.undofile = true
opt.errorbells = false
opt.encoding = "UTF-8"
opt.splitright = true
opt.splitbelow = true
opt.updatetime = 250
opt.timeoutlen = 300

-- vim: ts=2 sts=2 sw=2 et
