-- Visual mode remaps
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- moves visual selection down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- moves visual selection up
vim.keymap.set("v", "<", "<gv") -- keeps selection after indenting
vim.keymap.set("v", ">", ">gv") -- keeps selection after indenting

-- Clipboard Settings
vim.keymap.set({"n", "v"}, "x", '"_x') -- prevents character deletions from going to the clipboard
vim.keymap.set({"n", "v"}, "c", '"_c') -- prevents changes from going to the clipboard
vim.keymap.set({"n", "v"}, "d", '"dd') -- deletes into different register
vim.keymap.set("n", "<leader>p", '"dp', {desc="Paste last deletion"}) -- paste from delete register

-- Terminal mode to normal mode
vim.keymap.set("t", "<C-n>", "<C-\\><C-n>")
