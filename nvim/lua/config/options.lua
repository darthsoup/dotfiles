local opt = vim.opt

-- General
opt.encoding    = "utf-8"
opt.shell       = "zsh"
opt.swapfile    = false
opt.backup      = true
opt.backupdir   = vim.fn.expand("~/.local/share/nvim/backups//")
opt.history     = 5000

-- UI
opt.number         = true
opt.relativenumber = false
opt.cursorline     = true
opt.signcolumn     = "yes"
opt.title          = true
opt.showmode       = false
opt.showcmd        = true
opt.showmatch      = true
opt.laststatus     = 2
opt.termguicolors  = true
opt.background     = "dark"

-- Search
opt.hlsearch   = true
opt.ignorecase = true
opt.smartcase  = true

-- Indentation
opt.autoindent   = true
opt.expandtab    = true
opt.tabstop      = 4
opt.softtabstop  = 4
opt.shiftwidth   = 4

-- Scrolling
opt.scrolloff     = 5
opt.sidescrolloff = 8
opt.wrap          = false

-- Splits
opt.splitbelow = true
opt.splitright = true

-- Mouse & clipboard
opt.mouse = ""

-- Ensure backup directory exists
vim.fn.mkdir(vim.fn.expand("~/.local/share/nvim/backups"), "p")
