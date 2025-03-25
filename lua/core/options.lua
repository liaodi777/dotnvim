-- options.lua
local opt = vim.opt

-- Help
opt.helplang = "ja"

-- UI
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.cursorcolumn = true
opt.termguicolors = true
opt.signcolumn = "yes"

-- 不可視文字可視化
opt.list = true
opt.listchars = { tab = '>>', trail = '-', nbsp = '+' }

-- インデント
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.autoindent = true
opt.smartindent = true

-- 検索
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- ファイル
opt.backup = false
opt.swapfile = false
opt.undofile = true

-- スクロール設定
opt.scrolloff = 8
opt.sidescrolloff = 8

-- クリップボード
opt.clipboard = "unnamedplus"

-- コマンドライン
opt.cmdheight = 1
opt.showcmd = true
opt.laststatus = 2


