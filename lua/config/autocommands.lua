vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text',
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.api.nvim_create_autocmd('BufWritePre', {
	desc = 'Remove trailing whitespace on save',
	pattern = '*',
	callback = function()
		local save_cursor = vim.fn.getpos(".")
		vim.cmd([[%s/\s\+$//e]])
		vim.fn.setpos(".", save_cursor)
	end,
})

vim.api.nvim_create_autocmd('ModeChanged', {
	desc = "Format when entering normal mode",
	pattern = '*:n',
	callback = function()
		vim.lsp.buf.format({ async = true })
	end,
})
