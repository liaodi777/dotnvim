local plugins = {
  {
    "gruvbox-community/gruvbox",
    lazy = false,
    priority = 1000, -- 最優先で読み込む
--    config = function()
--      vim.cmd("colorscheme gruvbox")
--    end
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
  },
    {
        "cocopon/iceberg.vim",
        lazy = false,
        priority = 1000,
    },
    {
        "neanias/everforest-nvim",
        lazy = false,
        priority = 1000,
    },
}

return plugins
