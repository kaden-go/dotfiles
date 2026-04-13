return {
	{
		'nvim-telescope/telescope.nvim', 
		tag = '0.1.8',

		dependencies = {
			'nvim-lua/plenary.nvim',
			-- { 'nvim-telescope/telescope-fzf-native.nvim', build = 'build = cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake' }
		},
		config = function()
			require('telescope').setup {
				pickers = {
					-- find_files = {
					-- 	theme = "ivy"
					-- },
					-- help_tags = {
					-- 	theme = "ivy"
					-- },
					-- live_grep = {
					-- 	theme = "ivy"
					-- },
					-- grep_string = {
					-- 	theme = "ivy"
					-- }, 

				},
				-- extensions = {
				-- 	fzf = {}
				-- }
			}
			
			-- require('telescope').load_extension('fzf')

			vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags)
			vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files)
			vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep)
			vim.keymap.set('n', '<leader>fw', require('telescope.builtin').grep_string)		
			
			vim.keymap.set('n', '<leader>en', function()
				require('telescope.builtin').find_files {
					cwd = vim.fn.stdpath("config")
				}
				end)
			
			vim.keymap.set('n', '<leader>Fsdk', function()
				require('telescope.builtin').find_files {
					cwd = "C:/NXP/S32DS.3.6.0/S32DS/software/S32SDK_SJA1110_RTM_1.0.2/platform" 
				}
				end)
		end 
	}
}
