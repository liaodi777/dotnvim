-- ~/.config/nvim/lua/core/keymaps.lua

-- Leaderキーをspaceに設定
vim.g.mapleader = ' '
vim.g.maplocalleader = ' ' -- localleaderも合わせて設定しておくことを推奨

-- vim.keymap.setのエイリアス（短縮形）を定義し、コードの重複を避ける
local map = vim.keymap.set

-- ノーマルモード用の共通オプションを定義
local n_opts = { noremap = true, silent = true }

------------------------------------------------------------------
-- プラグイン関連のキーマッピング
------------------------------------------------------------------

-- [[ NvimTree ]]
n_opts.desc = "ファイルエクスプローラーを開閉"
map("n", "<leader>e", ":NvimTreeToggle<CR>", n_opts)

-- [[ Telescope ]]
n_opts.desc = "ファイルを検索"
map("n", "<leader>ff", ":Telescope find_files<CR>", n_opts)

n_opts.desc = "テキストを全文検索"
map("n", "<leader>fg", ":Telescope live_grep<CR>", n_opts)

-- [[ Telekasten ]]
n_opts.desc = "ノートを検索 (Find notes)"
map('n', '<leader>zf', '<cmd>Telekasten find_notes<cr>', n_opts)

n_opts.desc = "ノートを全文検索 (Grep)"
map('n', '<leader>zg', '<cmd>Telekasten search_notes<cr>', n_opts)

n_opts.desc = "カーソル下のリンクをたどる"
map('n', '<leader>zz', '<cmd>Telekasten follow_link<cr>', n_opts)

n_opts.desc = "新しいノートを作成"
map('n', '<leader>zn', '<cmd>Telekasten new_note<cr>', n_opts)

n_opts.desc = "今日の日次ノートへ"
map('n', '<leader>zT', '<cmd>Telekasten goto_today<cr>', n_opts)

n_opts.desc = "このノートへのバックリンクを表示"
map('n', '<leader>zb', '<cmd>Telekasten show_backlinks<cr>', n_opts)

n_opts.desc = "ノートを選択してリンクを挿入"
map('n', '<leader>zi', '<cmd>Telekasten insert_link<cr>', n_opts)

-- [[ Telekasten (Insert Mode) ]]
-- 挿入モードでノートへのリンクを素早く入力します
local i_opts = { noremap = true, silent = true } -- 挿入モード用のoptsを定義

-- 推奨: <leader>[ でリンク挿入。リンク挿入後も挿入モードを維持します。
i_opts.desc = "ノートを選択してリンクを挿入 (挿入モード)"
map('i', '<leader>[', function()
  require("telekasten").insert_link({ i = true })
end, i_opts)

------------------------------------------------------------------
-- ターミナル関連のキーマッピング
------------------------------------------------------------------

-- ターミナルモードで設定されるキーマップを関数にまとめる
function _G.set_terminal_keymaps()
  -- ターミナルモード用の共通オプション
  local t_opts = { buffer = 0, noremap = true, silent = true }

  map("t", "<esc>", [[<C-\><C-n>]], t_opts)
  map("t", "jk", [[<C-\><C-n>]], t_opts)
  map("t", "<C-h>", [[<Cmd>wincmd h<CR>]], t_opts)
  map("t", "<C-j>", [[<Cmd>wincmd j<CR>]], t_opts)
  map("t", "<C-k>", [[<Cmd>wincmd k<CR>]], t_opts)
  map("t", "<C-l>", [[<Cmd>wincmd l<CR>]], t_opts)
end

-- autocmdグループを定義し、設定リロード時に重複して登録されるのを防ぐ
vim.api.nvim_create_augroup("MyTerminalKeymaps", { clear = true })

-- TermOpenイベントが発生したときに関数を呼び出す
vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "term://*",
  group = "MyTerminalKeymaps",
  callback = function()
    set_terminal_keymaps()
  end,
})
