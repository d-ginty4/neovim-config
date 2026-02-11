vim.cmd('colorscheme catppuccin') --See the pluggin configurations

vim.diagnostic.config({ virtual_text = true }) -- View errors inline

vim.o.number = true
vim.o.relativenumber = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.showmode = false
vim.o.mouse = 'a'
vim.o.scrolloff = 10
vim.o.wrap = false -- code stays on same line
vim.o.undofile = true -- undo changes even after closing neovim
