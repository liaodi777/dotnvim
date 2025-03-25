--vim.fn["ddc#custom#patch_global"]("ui", "native")
--
--vim.fn["ddc#custom#patch_global"]("sources", { "around", "skkeleton" })
--
--vim.fn["ddc#custom#patch_global"]("sourceOptions", {
--  _ = {
--    matchers = { "matcher_head" },
--    sorters = { "sorter_rank" },
--  },
--  around = {
--    mark = "[A]",
--  },
--  skkeleton = {
--    mark = "[SKK]",
--    matchers = { "matcher_head" },
--    sorters = {}, -- 必要なら空のままでもOK
--    converters = {},
--    isVolatile = true,
--    minAutoCompleteLength = 1,
--  },
--})
--
--vim.fn["ddc#enable"]()


-- ddc全体の設定
vim.fn["ddc#custom#patch_global"]("ui", "native")

-- 使用するソースを設定
vim.fn["ddc#custom#patch_global"]("sources", { "around", "skkeleton" })

-- sourceOptions（表示などのカスタマイズ）
vim.fn["ddc#custom#patch_global"]("sourceOptions", {
  _ = {
    matchers = { "matcher_head" },
    sorters = { "sorter_rank" },
  },
  around = {
    mark = "[A]",
  },
  skkeleton = {
    mark = "[SKK]",
    matchers = { "skkeleton" },  -- Vim scriptで使ってたmatcherを再現
    sorters = {},
    converters = {},
    isVolatile = true,
    minAutoCompleteLength = 1, -- 昔と同じ値にしてるけど、1でもいいかも◎
  },
})

-- sourceParams（挙動パラメータ）
vim.fn["ddc#custom#patch_global"]("sourceParams", {
  around = {
    maxSize = 500, -- 昔の設定をそのまま移植！
  },
})

-- キーマッピング（TABで補完を起動）
vim.keymap.set("i", "<Tab>", function()
  if vim.fn.pumvisible() == 1 then
    return "<C-n>"
  elseif vim.fn.col(".") <= 1 or vim.fn.getline("."):sub(vim.fn.col(".") - 1, vim.fn.col(".") - 1):match("%s") then
    return "<Tab>"
  else
    return vim.fn["ddc#map#manual_complete"]()
  end
end, { expr = true, noremap = true, silent = true })

-- Shift-TABで補完候補戻る
vim.keymap.set("i", "<S-Tab>", function()
  return vim.fn.pumvisible() == 1 and "<C-p>" or "<C-h>"
end, { expr = true, noremap = true, silent = true })

-- ddc起動！
vim.fn["ddc#enable"]()
