vim.fn["skkeleton#config"]({
  globalDictionaries = {
        "~/.config/skk/SKK-JISYO.L",
        "~/.config/skk/SKK-JISYO.pinyin",
    }, -- 必要に応じてパス調整！
  eggLikeNewline = true,
  registerConvertResult = true,
})

vim.api.nvim_set_keymap("i", "<C-j>", "<Plug>(skkeleton-enable)", {})
vim.api.nvim_set_keymap("c", "<C-j>", "<Plug>(skkeleton-enable)", {})

