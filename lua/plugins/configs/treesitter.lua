require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "lua", "javascript", "typescript", "python", "html", "css", "json", "bash"
  }, -- 必要な言語を指定
  sync_install = false,   -- 同期インストールを無効化
  auto_install = true,    -- 自動インストールを有効化
  highlight = {
    enable = true,        -- シンタックスハイライトを有効化
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true }, -- 自動インデント
})
