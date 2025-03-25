local M = {}

function M.setup()
  require("transparent").setup({
    enable = true,
    extra_groups = {
      "NormalFloat",
      "NvimTreeNormal",
      "TelescopeNormal",
      "TelescopeBorder",
      "FloatBorder",
      "VertSplit",
    },
    exclude = { "CursorLine", "StatusLine" },
  })
  vim.cmd("TransparentEnable")
end

return M
