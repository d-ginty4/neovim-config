-- local function open_floating_terminal()
--   -- Get editor dimensions
--   local width = math.floor(vim.o.columns * 0.8)
--   local height = math.floor(vim.o.lines * 0.8)
--   local row = math.floor((vim.o.lines - height) / 2)
--   local col = math.floor((vim.o.columns - width) / 2)
--
--   -- Create a new buffer
--   local buf = vim.api.nvim_create_buf(false, true) -- no file, ephemeral
--
--   -- Floating window configuration
--   vim.api.nvim_open_win(buf, true, {
--     relative = "editor",
--     width = width,
--     height = height,
--     row = row,
--     col = col,
--     style = "minimal",
--     border = "rounded",
--   })
--
--   -- Start terminal in that buffer
--   vim.cmd("terminal")
--
--   -- Enter insert mode automatically
--   vim.cmd("startinsert")
-- end

return {
    { "<leader>to", "<cmd>terminal<cr>", desc = "Open terminal" },
    { "<leader>tc", "<cmd>bd!<cr>", desc = "Close terminal (Deletes Session)" },
}
