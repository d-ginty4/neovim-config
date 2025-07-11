vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("config.lazy")
require("config.settings")
require("config.lsp")
vim.lsp.enable('luals')
