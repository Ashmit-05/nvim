return  {
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
}
