local M = {}

function M.setup()
  require("render-markdown").setup({
    heading = {
      enabled = true,
      border = true,
    },
    bullet = {
      enabled = true,
      icon = "•",
    },
    code = {
      enabled = true,
      border = "rounded",
    },
  })
end

return M
