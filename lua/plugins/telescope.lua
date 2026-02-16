return {
	'nvim-telescope/telescope.nvim',
	version = '*',
	dependencies = {
		'nvim-lua/plenary.nvim',
		-- optional but recommended
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},
	opts = function()
		local actions = require("telescope.actions")

		return {
			defaults = {
				mappings = {
					i = {
						["<C-h>"] = actions.preview_scrolling_left,
						["<C-j>"] = actions.preview_scrolling_down,
						["<C-k>"] = actions.preview_scrolling_up,
						["<C-l>"] = actions.preview_scrolling_right,
					},
				},
			},
		}
	end,
}
