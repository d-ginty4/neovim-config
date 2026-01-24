return {
	-- Create windows
	{"<leader>wo", desc="Open New Window"},
	{"<leader>wol", "<cmd>vsplit<cr>", desc="Open Window Right"},
	{"<leader>woj", "<cmd>split<cr>", desc="Open Window Bottom"},

	-- Move between windows
	{"<leader>wl", "<c-w>l", desc="Right Window (Go To)"},
	{"<leader>wh", "<c-w>h", desc="Left Window (Go To)"},
	{"<leader>wj", "<c-w>j", desc="Bottom Window (Go To)"},
	{"<leader>wk", "<c-w>k", desc="Top Window (Go To)"},

	-- Window Sizing
	{"<leader>ws", desc="Size Window"},
	{"<leader>wsh", "<c-w>_", desc="Full Height"},
	{"<leader>wsw", "<c-w>|", desc="Full Width"},

	-- Misc Window Commands
	{"<leader>wc", "<c-w>q", desc="Close Window"},
}
