require("gitsigns").setup({
  signs = {
    add          = { text = "│" },
    change       = { text = "│" },
    delete       = { text = "_" },
    topdelete    = { text = "‾" },
    changedelete = { text = "~" },
  },
  current_line_blame = true,
  current_line_blame_opts = {
    delay = 200,
  },
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns
    local map = vim.keymap.set
    map("n", "<leader>gb", gs.toggle_current_line_blame, { buffer = bufnr, desc = "Git Blame" })
    map("n", "<leader>gp", gs.preview_hunk, { buffer = bufnr, desc = "Preview Hunk" })
    map("n", "<leader>gs", gs.stage_hunk, { buffer = bufnr, desc = "Stage Hunk" })
  end,
})
