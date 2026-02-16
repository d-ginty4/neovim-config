local telescope = require("telescope.builtin")

return {
	{ "<leader>sf", telescope.git_files, desc = "Find Files" },
	{ "<leader>sc", telescope.live_grep, desc = "Live Grep" },
	{ "<leader>sb", telescope.buffers,   desc = "Buffers" },
}
