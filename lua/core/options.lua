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


--vim.opt.number = true      -- 行番号を表示
--vim.opt.relativenumber = true -- 相対行番号を有効化
--vim.opt.tabstop = 4        -- タブ幅を4に設定
--vim.opt.shiftwidth = 4     -- インデント幅を4に
--vim.opt.expandtab = true   -- タブをスペースに変換
--vim.opt.termguicolors = true -- 256色ターミナル対応
--vim.opt.cursorline = true   -- カーソル行をハイライト
--vim.opt.scrolloff = 4   -- カーソルの上下に余白を確保
--
--vim.opt.unnamedplus = true -- システムクリップボードと連携



