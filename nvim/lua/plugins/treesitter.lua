return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate", -- Run `:TSUpdate` after installation
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "lua", "python", "javascript", "typescript", "c", "rust" }, -- Add languages you want
				sync_install = false, -- Install parsers asynchronously
				auto_install = true, -- Automatically install missing parsers when entering buffer
				highlight = {
					enable = true, -- Enable syntax highlighting
				},
				indent = {
					enable = true, -- Enable indentation
				},
			})
		end,
	},
}

