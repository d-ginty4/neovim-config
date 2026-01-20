-- mini is used to install smaller plugins
return {
	'nvim-mini/mini.nvim',
	config = function()
		require('mini.icons').setup({})
		require('mini.pairs').setup({}) -- automatically add pairs or (, {, etc
		require('mini.git').setup({})
	end
}
