return {
	{
		"saghen/blink.cmp",

		dependencies = {
			"L3MON4D3/LuaSnip",
			"rafamadriz/friendly-snippets",
		},

		version = "*",

		opts = {
			keymap = {
				["<C-n>"] = { "select_next", "fallback" },
				["<C-p>"] = { "select_prev", "fallback" },
				["<CR>"]  = { "accept", "fallback" },
			},

			appearance = {
				nerd_font_variant = "mono",
			},

			completion = {
				documentation = {
					auto_show = true,
				},
			},

			sources = {
				default = {
					"lsp",
					"path",
					"buffer",
					"snippets"
				},
			},
			enabled = function()
				local ft = vim.bo.filetype

				return not vim.tbl_contains({
					"markdown",
					"text",
				}, ft)
			end,
		},
	},
}
