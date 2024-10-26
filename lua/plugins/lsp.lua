return {
	'VonHeikemen/lsp-zero.nvim',
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/nvim-cmp',
	{
		"L3MON4D3/LuaSnip",
		version = "v2.3",
		build = "make install_jsregexp",
		dependencies = { "rafamadriz/friendly-snippets" },
	},
	{
		'neovim/nvim-lspconfig',
		config = function()
			-- Reserve a space in the gutter
			-- This will avoid an annoying layout shift in the screen
			vim.opt.signcolumn = 'yes'

			-- Add cmp_nvim_lsp capabilities settings to lspconfig
			-- This should be executed before you configure any language server
			local lspconfig_defaults = require('lspconfig').util.default_config
			lspconfig_defaults.capabilities = vim.tbl_deep_extend(
			  'force',
			  lspconfig_defaults.capabilities,
			  require('cmp_nvim_lsp').default_capabilities()
			)

			-- This is where you enable features that only work
			-- if there is a language server active in the file
			vim.api.nvim_create_autocmd('LspAttach', {
			  desc = 'LSP actions',
			  callback = function(event)
				local opts = {buffer = event.buf}

				vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
				vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
				vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
				vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
				vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
				vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
				vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
				vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
				vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
				vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
			  end,
			})
		end
	}
}