return {
  {
    "neovim/nvim-lspconfig",

    config = function()
      local capabilities = require("blink.cmp").get_lsp_capabilities()

      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
      })

      vim.lsp.enable("lua_ls")
    end,
  },
}
