return {

'nvim-treesitter/nvim-treesitter',
build = ":TSUpdate", 

	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			highlight = { 
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true},
			autotage = { enable = true}, 
			ensure_installed = {
				"lua", 
				"c",
				"python", 
				"markdown",
				"markdown_inline",
			}, 
			auto_install = true,
		})
	end
}

