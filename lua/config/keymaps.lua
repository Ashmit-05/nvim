vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.api.nvim_set_keymap("n", "<S-l>", "<CMD>BufferLineCycleWindowlessNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-h>", "<CMD>BufferLineCycleWindowlessPrev<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-t>", "<CMD>BufferLineCycleWindowlessToggle<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Tab>", "<Cmd>BufferNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>x", "<Cmd>BufferClose<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>e", "<cmd>SFMToggle<cr>", { noremap = true, silent = true })

vim.cmd([[
	nnoremap G Gzz
	nnoremap o zzo
]])

-- Yank into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y') -- yank motion
vim.keymap.set({ "n", "v" }, "<leader>Y", '"+Y') -- yank line

-- Paste from system clipboard
vim.keymap.set("n", "<leader>p", '"+p') -- paste after cursor
vim.keymap.set("n", "<leader>P", '"+P') -- paste before cursor

-- noice keymaps
vim.keymap.set("n", "<leader>nl", function()
  require("noice").cmd("last")
end)
vim.keymap.set("n", "<leader>nh", function()
  require("noice").cmd("history")
end)
vim.keymap.set("n", "<leader>nd", function()
  require("noice").cmd("dismiss")
end)
vim.api.nvim_set_keymap("n", "<leader>nt", ":Telescope notify<CR>", { noremap = true, silent = true })

-- oil.nvim
vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>", { desc = "Open parent directory" })
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end)
vim.keymap.set("n", "<leader>h", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-p>", function()
  harpoon:list():prev()
end)
vim.keymap.set("n", "<C-n>", function()
  harpoon:list():next()
end)

vim.keymap.set("n", "<leader>1", function()
  harpoon:list():select(1)
end)
vim.keymap.set("n", "<leader>2", function()
  harpoon:list():select(2)
end)
vim.keymap.set("n", "<leader>3", function()
  harpoon:list():select(3)
end)
vim.keymap.set("n", "<leader>4", function()
  harpoon:list():select(4)
end)

--telescope keymaps
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>fs", function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

vim.api.nvim_set_keymap("n", "<c-h>", "<cmd>TmuxNavigateLeft<cr>", { silent = true })
vim.api.nvim_set_keymap("n", "<c-j>", "<cmd>TmuxNavigateDown<cr>", { silent = true })
vim.api.nvim_set_keymap("n", "<c-k>", "<cmd>TmuxNavigateUp<cr>", { silent = true })
vim.api.nvim_set_keymap("n", "<c-l>", "<cmd>TmuxNavigateRight<cr>", { silent = true })
vim.api.nvim_set_keymap("n", "<c-\\>", "<cmd>TmuxNavigatePrevious<cr>", { silent = true })
