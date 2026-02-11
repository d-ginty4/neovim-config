-- Visual mode remaps
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- moves visual selection down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- moves visual selection up
vim.keymap.set("v", "<", "<gv") -- keeps selection after indenting
vim.keymap.set("v", ">", ">gv") -- keeps selection after indenting

-- Clipboard Settings
vim.keymap.set("n", "x", '"_x') -- prevents character deletions from going to the clipboard

