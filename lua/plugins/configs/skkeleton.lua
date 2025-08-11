vim.fn["skkeleton#config"]({
  globalDictionaries = {
        "~/.config/skk/SKK-JISYO.L",
        "~/.config/skk/SKK-JISYO.pinyin",
    },
  eggLikeNewline = true,
  registerConvertResult = true,
})

vim.api.nvim_set_keymap("i", "<C-j>", "<Plug>(skkeleton-toggle)", {})
vim.api.nvim_set_keymap("c", "<C-j>", "<Plug>(skkeleton-toggle)", {})

