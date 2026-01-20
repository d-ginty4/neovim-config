--which key will show us our mappings
local wk = require("which-key")

--Standalone mappings
wk.add({
	{"<leader>w", "<cmd>w<cr>", desc="Save File"}
})

--the following are groups of mappings
local fileTreeMappings = require("config.mappings.fileTree")
wk.add({
    {"<leader>f", desc="File Tree Commands"},
	fileTreeMappings
})

local windowMappings = require("config.mappings.windows")
wk.add({
    {"<leader>w", desc="Window Commands"},
	windowMappings
})

wk.add({
    {"<leader>b", desc="Buffer Commands"},
})

wk.add({
    {"<leader>r", desc="Register Commands"},
})
