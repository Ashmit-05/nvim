return {
  {
    "christoomey/vim-tmux-navigator",
    config = function()
      vim.api.nvim_set_keymap("n", "<c-h>", "<cmd>TmuxNavigateLeft<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "<c-j>", "<cmd>TmuxNavigateDown<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "<c-k>", "<cmd>TmuxNavigateUp<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "<c-l>", "<cmd>TmuxNavigateRight<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "<c-\\>", "<cmd>TmuxNavigatePrevious<cr>", { silent = true })
    end,
  },
  {
    "romgrk/barbar.nvim",
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = {
      theme = "hyper",
      shortcut_type = "number",
      config = {
        week_header = { enable = true },
        packages = { enable = false },
        project = { enable = false, limit = 2 },
        mru = { limit = 9 },
      },
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "dinhhuy258/sfm.nvim",
    opts = {},
  },
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {
      -- configurations go here
    },
  },
  {
    "xiyaowong/transparent.nvim",
    opts = {
      enable = true, -- enable transparency for all components
      extra_groups = { -- add groups to make transparent
        "TelescopeNormal",
        "TelescopeBorder",
        "TelescopePromptNormal",
        "TelescopeResultsNormal",
        "TelescopePreviewNormal",
        -- add other UI elements that you want transparent here
      },
      exclude = {}, -- you can exclude specific groups if needed
    },
  },
  {
    "stevearc/oil.nvim",
    opts = {},
  },
  {
    "mong8se/actually.nvim",
  },
}
