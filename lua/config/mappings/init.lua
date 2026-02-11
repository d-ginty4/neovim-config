--which key will show us our mappings
local wk = require("which-key")

--Standalone mappings
require("config.mappings.mappings")
wk.add({})

--the following are groups of mappings
local fileTreeMappings = require("config.mappings.fileTree")
wk.add({
    {"<leader>f", desc="File Commands"},
	fileTreeMappings
})

local windowMappings = require("config.mappings.windows")
wk.add({
    {"<leader>w", desc="Window Commands"},
	windowMappings
})

local buffersMappings = require("config.mappings.buffers")
wk.add({
    {"<leader>b", desc="Buffer Commands"},
	buffersMappings
})

wk.add({
    {"<leader>r", desc="Register Commands"},
})

local gitMappings = require("config.mappings.git")
wk.add({
    {"<leader>g", desc="Git Commands"},
	gitMappings
})

