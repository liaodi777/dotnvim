--local default_conf = {
--    enable = false,
--    style = {},
--    notify = false,
--    priority = 0,
--    exclude_filetypes = {
--        aerial = true,
--        dashboard = true,
--        -- some other filetypes
--    }
--}
--local default_conf = {
--    priority = 15,
--    style = {
--        { fg = "#806d9c" },
--        { fg = "#c21f30" },
--    },
--    use_treesitter = true,
--    chars = {
--        horizontal_line = "─",
--        vertical_line = "│",
--        left_top = "╭",
--        left_bottom = "╰",
--        right_arrow = ">",
--    },
--    textobject = "",
--    max_file_size = 1024 * 1024,
--    error_sign = true,
--    -- animation related
--    duration = 200,
--    delay = 300,
--}

--require("hlchunk").setup({
--    chunk = {
--        enable = true,
--        use_treesitter = true,
--        notify = true
--    },
--    indent = {
--        enable = true,
--        chars = { "│", "¦", "┆", "┊" }, -- インデントマークの種類
--    },
--    line_num = {
--        enable = false, -- 行番号のハイライトを無効化
--    },
--    blank = {
--        enable = false, -- 空行のハイライトを無効化
--    },
--})

local M = {}

M.setup = function()
  require("hlchunk").setup({
    chunk = {
      enable = true,
      use_treesitter = true,
    },
    indent = {
      enable = true,
    },
    line_num = {
      enable = false,
    },
    blank = {
      enable = false,
    },
  })
end

return M
