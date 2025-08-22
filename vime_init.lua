-- VIME on macOS init.lua (Final Stable Version)

-- 1. 環境変数と普段の設定を読み込む
vim.env.LANG = 'ja_JP.UTF-8'
vim.env.LC_CTYPE = 'ja_JP.UTF-8'
vim.cmd('source ' .. os.getenv('HOME') .. '/.config/nvim/init.lua')

-- 2. 起動時に自動でインサートモードに入る
vim.api.nvim_create_autocmd("BufWinEnter", {
  pattern = "*",
  command = "startinsert",
})

-- 3. VIMEを終了するための専用関数を定義
function _G.VimeFinish()
  local content = vim.api.nvim_buf_get_lines(0, 0, -1, false)
  local text = table.concat(content, "\n")

  if text == "" or text == "\n" then
    vim.fn.setreg('+', '')
    vim.fn.setreg('*', '')
  else
    vim.fn.setreg('+', text)
    vim.fn.setreg('*', text)
    local history_file = os.getenv("HOME") .. "/vime_history.txt"
    local file = io.open(history_file, "a")
    if file then
      file:write(text .. "\n---\n")
      file:close()
    end
  end
  vim.cmd("qa!")
end

-- 4. ノーマルモードで <Leader>q をVIME終了のトリガーに設定
vim.keymap.set('n', '<Leader>q', '<Cmd>lua _G.VimeFinish()<CR>', { noremap = true, silent = true, desc = "VIMEを終了してコピー" })

-- VIME用のミニマルな設定
vim.opt.laststatus = 0
vim.opt.showtabline = 0
vim.opt.number = true
vim.opt.relativenumber = true
