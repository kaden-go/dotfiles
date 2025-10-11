return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			win = {
				border = "single",
				col = 0.5,
			},
			spec = {
				{"<leader>g", group = "grep"}, -- group 
				{"<leader>gf", desc = "find file", mode = "n"},
				{"<leader>gw", desc = "grep word under cursor", mode = "n"}, -- grep word under cursor 
			},
			delay = 500,
			preset = "classic", 
			layout = { align = 'center' },
		}, 
		keys = { 
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},

	}
}

