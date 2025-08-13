-- local telekasten = require("telekasten")
-- 
-- telekasten.setup({
-- 
-- })
local telekasten = require("telekasten")


-- telekasten本体の設定
telekasten.setup({
  home = vim.fn.expand('~/Documents/zettelkasten'),

  -- 各サブディレクトリをhomeからの相対パスで指定
  dailies = 'journal/daily',
  weeklies = 'journal/weekly',
  templates = 'templates',
  image_subdir = "img",

  -- テンプレートもhomeからの相対パスで指定
  template_new_note = 'templates/template_new_note.md',
  templates_new_daily = 'templates/templates_new_daily.md',
  templates_new_weekly = 'templates/templates_new_weekly.md',

  extension = ".md",
  -- Vault

  -- ノートのファイル名の生成
  new_note_filename = "title-uuid",
  uuid_type = "%Y%m%d%H%M",
  uuid_sep = "-",

  -- 存在しないノートを作成するためのフラグ
  follow_creates_nonexisting = true,    -- リンク追跡時に存在しないノートを作成
  dailies_create_nonexisting = true,    -- 存在しない日次ノートを作成
  weeklies_create_nonexisting = true,   -- 存在しない週次ノートを作成


  -- goto_today と goto_thisweek でTelescopeプロンプトをスキップ
  journal_auto_open = false,


  -- 画像リンクのスタイル
    -- wiki:     ![[画像名]]
    -- markdown: ![](image_subdir/xxxxx.png)
  image_link_style = "markdown",

  -- デフォルトのソートオプション: 'filename', 'modified'
  sort = "filename",

  -- マークダウンバッファとTelescopeプレビューアで構文を利用可能にする
  install_syntax = true,

  -- タグ記法: '#tag', '@tag', ':tag:', 'yaml-bare'
  tag_notation = "#tag",


  -- subdir/ 内のノートにリンクする際、[[タイトルのみ]] のリンクではなく
  -- [[subdir/タイトル]] のリンクを作成する
  subdirs_in_links = true,

  -- コマンドパレットのテーマ: dropdown (ウィンドウ) または ivy (下部パネル)
  command_palette_theme = "dropdown",


  -- タグリストのテーマ:
    -- get_cursor (カーソル位置に小さなタグリスト)
    -- dropdown (ウィンドウ)
    -- ivy (下部パネル)
  show_tags_theme = "ivy",


  -- メディアファイル（主に画像）のプレビューア
    -- "telescope-media-files" (telescope-media-files.nvim がインストールされている場合)
    -- "catimg-previewer" (catimg がインストールされている場合)
    -- "viu-previewer" (viu がインストールされている場合)
  media_previewer = "telescope-media-files",


  -- 画像挿入とプレビューのファイルリストをカスタマイズ。
  media_extensions = {
          ".png",
          ".jpg",
          ".bmp",
          ".gif",
          ".pdf",
          ".mp4",
          ".webm",
          ".webp",
        },

  -- カレンダー連携
  plug_into_calendar = true,         -- カレンダー連携を使用
  calendar_opts = {
    weeknm = 4,                      -- カレンダーの週表示モード:
                                     --   1 .. 'WK01'
                                     --   2 .. 'WK 1'
                                     --   3 .. 'KW01'
                                     --   4 .. 'KW 1'
                                     --   5 .. '1'

    calendar_monday = 1,             -- 月曜日を週の始まりとする:
                                     --   1 .. true
                                     --   0 .. false

    calendar_mark = 'left-fit',      -- カレンダーマークの配置
                                     -- マークされた日のマークをどこに置くか:
                                     --   'left'
                                     --   'right'
                                     --   'left-fit'
  },

  vaults = {
    personal = {
      -- personal ボールトの設定。例:
      -- home = "/home/user/vaults/personal",
    }
  },

  -- 使用するクリップボードプログラムを指定
  clipboard_program = "", -- xsel, xclip, wl-paste, osascript

})


