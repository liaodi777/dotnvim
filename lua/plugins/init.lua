
local plugins = {
require("plugins.colorscheme"),
{
    "vim-jp/vimdoc-ja",
    event = "VeryLazy"
},
{
    "vim-denops/denops.vim",
    lazy = false,
},
{
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup()
    end
},

{
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-media-files.nvim",
    },
    config = function()
      require("telescope").setup()
    end
},
{
  "nvim-lua/popup.nvim",
},

{
  "nvim-telescope/telescope-media-files.nvim",
    config = function()
      require('telescope').load_extension('media_files')
    end
},


{
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({})
    end
},
{
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup()
    end
},
-- **LSP & 自動補完関連**
    {
      "neovim/nvim-lspconfig",
      dependencies = { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" },
      config = function()
        require("plugins.configs.lsp")
      end
    },
    {
      "williamboman/mason.nvim",
      build = ":MasonUpdate"
    },
    {
      "williamboman/mason-lspconfig.nvim"
    },
    {
      "hrsh7th/nvim-cmp",
      dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "saadparwaiz1/cmp_luasnip",
        "L3MON4D3/LuaSnip",
        "rafamadriz/friendly-snippets"
      },
      config = function()
        require("plugins.configs.cmp")
      end
    },
--
{
    "shellRaining/hlchunk.nvim",
    event = { "UIEnter" },
    config = function()
      require("plugins.configs.hlchunk").setup()
    end,
},
    {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",  -- 最新のパーサーを自動更新
      event = { "BufReadPost", "BufNewFile" },
      config = function()
        require("plugins.configs.treesitter") -- 設定を別ファイルで管理
      end
    },
{
    "xiyaowong/transparent.nvim",
    lazy = false,
    config = function()
      require("plugins.configs.transparent").setup()
    end
},
    {
      "akinsho/toggleterm.nvim",
      version = "*",
      config = function()
        require("plugins.configs.toggleterm")
      end
    },
{
      "Shougo/ddc.vim",
      dependencies = {
        "vim-denops/denops.vim",
      },
      event = "InsertEnter",
      config = function()
        require("plugins.configs.ddc")
      end,
},
{
      "vim-skk/skkeleton",
      dependencies = {
        "vim-denops/denops.vim",
      },
      lazy = false,
      config = function()
        require("plugins.configs.skkeleton")
      end,
},
{ "Shougo/ddc-ui-native"},
{ "Shougo/ddc-source-around"},
{ "Shougo/ddc-matcher_head"},
{ "Shougo/ddc-sorter_rank"},
{ "delphinus/skkeleton_indicator.nvim", opts = {} },
{
      "lewis6991/gitsigns.nvim",
      event = { "BufReadPre", "BufNewFile" },
      config = function()
        require("plugins.configs.gitsigns")
      end,
},

{
    "lambdalisue/vim-gin",
    cmd = { "Gin", "GinStatus", "GinDiff", "GinLog" },
    config = function()
      require("plugins.configs.gin")
    end,
},

{
  "numToStr/Comment.nvim",
  config = function()
    require("plugins.configs.comment")
  end,
  event = "VeryLazy", -- 起動時のパフォーマンス最適化：必要になったら読み込む
},
{
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons", -- または mini.nvim に置き換え
    },
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("plugins.configs.render-markdown").setup()
    end,
},

 
{
  'nvim-telekasten/telekasten.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  config = function()
    require('plugins.configs.telekasten')
  end
},
{
    'nvim-telekasten/calendar-vim',
},

 
}

return plugins
