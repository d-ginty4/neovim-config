-- Line Numbers
vim.cmd('set number')
vim.cmd('set relativenumber')

-- Tabs and spacing
vim.opt.tabstop = 4     
vim.opt.shiftwidth = 4
vim.cmd('set autoindent')
vim.cmd('set smartindent')

vim.opt.scrolloff = 5
vim.cmd('set nowrap')
vim.o.wildmenu = true
vim.o.wildmode = 'longest:full,full'  -- Set completion mode
