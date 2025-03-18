
local plugins = {
require("plugins.colorscheme"),
{
  "vim-jp/vimdoc-ja",
  event = "VeryLazy"
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
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup()
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

}

return plugins
