local toggleterm = require("toggleterm")

toggleterm.setup({
  size = 20, -- ターミナルの高さ
  open_mapping = [[<c-\>]], -- <Ctrl+\> でトグル
  hide_numbers = true, -- 行番号を非表示
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 2, -- 明るさの調整
  start_in_insert = true, -- ターミナルを挿入モードで開始
  persist_size = true, -- サイズを記憶
  direction = "float", -- "horizontal", "vertical", "float" が選べる
  close_on_exit = true, -- プロセス終了時にターミナルを閉じる
  shell = vim.o.shell, -- 使用するシェル
  float_opts = {
    border = "curved", -- 浮動ウィンドウの枠線のスタイル ("single", "double", "shadow", etc.)
    winblend = 0, -- 背景の透明度
    highlights = {
      border = "Normal",
      background = "Normal",
    },
  },
})

-- 💡 LazyGit を浮動ウィンドウで開く専用のターミナル定義
local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({
  cmd = "lazygit",
  hidden = true,
  direction = "float",
  float_opts = {
    border = "curved",
    winblend = 0,
    highlights = {
      border = "Normal",
      background = "Normal",
    },
  },
  on_open = function(term)
    vim.cmd("startinsert!") -- 起動時にインサートモードにする
  end,
})

-- 🗝️ キーマッピング：<leader>gg で LazyGit 起動
vim.keymap.set("n", "<leader>gg", function()
  lazygit:toggle()
end, { desc = "Open LazyGit" })
