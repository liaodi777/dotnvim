require("telescope").setup {
  extensions = {
    themes = {
      colorscheme = true
    },
    media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      filetypes = { "png", "webp", "jpg", "jpeg", "gif", "mp4", "webm", "pdf" },
      -- find command (defaults to `fd`)
      find_cmd = "fd",
      backend = "wezterm",
    },
  },
}
