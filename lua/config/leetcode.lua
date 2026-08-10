local leetcode_dir = "/Users/ashmit/Projects/leetcode"

local function is_leetcode()
  local file = vim.fn.expand("%:p")
  return file == leetcode_dir or vim.startswith(file, leetcode_dir .. "/")
end

local function disable_ide_features()
  if not is_leetcode() then
    return
  end

  -- Disable blink.cmp completion
  vim.b.completion = false

  -- Disable diagnostics
  vim.diagnostic.enable(false)

  -- Disable automatic formatting
  vim.g.autoformat = false

  -- Stop LSP clients attached to this buffer
  for _, client in pairs(vim.lsp.get_clients({ bufnr = 0 })) do
    vim.lsp.stop_client(client.id)
  end
end

vim.api.nvim_create_autocmd({ "BufEnter", "BufReadPost", "BufNewFile" }, {
  callback = disable_ide_features,
})
