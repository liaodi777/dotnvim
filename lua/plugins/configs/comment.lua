local comment = require("Comment")

comment.setup({
  padding = true, -- コメントとコードの間にスペースを入れる
  sticky = true,  -- コメントトグル後にカーソル位置を維持
  ignore = nil,   -- 無視したい行（例えば空白行を無視したいなら "^$"）

  toggler = {
    line = "gcc", -- 1行コメントトグル
    block = "gbc", -- ブロックコメントトグル
  },
  opleader = {
    line = "gc",
    block = "gb",
  },
  extra = {
    above = "gcO", -- 上の行にコメントを追加
    below = "gco", -- 下の行にコメントを追加
    eol = "gcA",   -- 行末にコメント追加
  },
  mappings = {
    basic = true,    -- 上記キーマップを有効化
    extra = true,    -- extra キーマップ（gcOなど）も有効化
  },
  pre_hook = nil, -- treesitter連携などしたいときに使う
  post_hook = nil, -- コメント処理後に実行したい処理があればここに
})
