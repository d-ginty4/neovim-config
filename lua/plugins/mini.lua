-- mini is used to install smaller plugins
return {
	'echasnovski/mini.nvim',
	enabled = true,
	config = function()
		require('mini.statusline').setup({}) 
		require('mini.icons').setup({}) 
		require('mini.pairs').setup({}) -- automatically add pairs or (, {, etc
		require('mini.git').setup({}) 
	end
}
