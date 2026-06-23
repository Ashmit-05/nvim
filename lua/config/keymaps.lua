-- Yank into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Copy word" }) -- yank motion
vim.keymap.set({ "n", "v" }, "<leader>Y", '"+Y', { desc = "Copy line" }) -- yank line



-- oil.nvim
vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>", { desc = "Open parent directory" })



-- vim tmux navigator
vim.api.nvim_set_keymap("n", "<c-h>", "<cmd>TmuxNavigateLeft<cr>", { silent = true })
vim.api.nvim_set_keymap("n", "<c-j>", "<cmd>TmuxNavigateDown<cr>", { silent = true })
vim.api.nvim_set_keymap("n", "<c-k>", "<cmd>TmuxNavigateUp<cr>", { silent = true })
vim.api.nvim_set_keymap("n", "<c-l>", "<cmd>TmuxNavigateRight<cr>", { silent = true })
vim.api.nvim_set_keymap("n", "<c-\\>", "<cmd>TmuxNavigatePrevious<cr>", { silent = true })



-- telescope
local tele = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', tele.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', tele.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', tele.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', tele.help_tags, { desc = 'Telescope help tags' })



-- noice keymaps
vim.keymap.set(
	"n", "<leader>nl",
	function()
  	require("noice").cmd("last")
	end,
	{ desc = "Display Last Notification" }
)

vim.keymap.set(
	"n", "<leader>nh",
	function()
  	require("noice").cmd("history")
	end,
	{ desc = "Notification History" }
)

vim.keymap.set(
	"n", "<leader>nd",
	function()
		require("noice").cmd("dismiss")
	end,
	{ desc = 'Dismiss Notifications' }
)

vim.api.nvim_set_keymap("n", "<leader>nt", ":Telescope notify<CR>", { noremap = true, silent = true })


-- neotree
vim.keymap.set('n', '<leader>e', "<cmd>Neotree toggle<cr>", { desc = 'Telescope find files' })


-- Buffers
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<Tab>", "<Cmd>BufferNext<CR>", opts)
vim.api.nvim_set_keymap("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>x", "<Cmd>BufferClose<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>bp", "<Cmd>BufferPick<CR>", opts)


-- Diagnostic
vim.api.nvim_set_keymap("n", "<leader>dl", ":Telescope diagnostics bufnr=0<CR>", { desc = "Diagnostic list in the current file" })
vim.api.nvim_set_keymap("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<CR>", { desc = "Go to next diagnostic" })
vim.api.nvim_set_keymap("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { desc = "Go to previous diagnostic" })
