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
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
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



vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.bo.shiftwidth = 4
    vim.bo.tabstop = 4
    vim.bo.expandtab = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "html", "css", "javascript", "typescript", "vue" },
  callback = function()
    vim.bo.shiftwidth = 2
    vim.bo.tabstop = 2
    vim.bo.expandtab = true
  end,
})
