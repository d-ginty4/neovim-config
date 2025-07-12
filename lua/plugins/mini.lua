-- mini is used to install smaller plugins
return {
	'echasnovski/mini.nvim',
	enabled = true,
	config = function()
		require('mini.statusline').setup({ use_icons = true }) -- customize the status bar
		require('mini.icons').setup({}) 
		require('mini.pairs').setup({}) -- automatically add pairs or (, {, etc
		require('mini.git').setup({}) 
	end
}
