vim.api.nvim_create_autocmd("FileType", {
  pattern = { "markdown", "txt" },
  callback = function()
    vim.opt_local.spell = false
  end,
})

-- Disable automatic cursor position restoration
vim.api.nvim_create_autocmd("BufReadPost", {
  callback = function()
    vim.api.nvim_win_set_cursor(0, { 1, 0 }) -- Move cursor to first line, first column
  end,
})
