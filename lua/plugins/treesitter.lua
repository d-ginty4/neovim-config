-- Treesitter is used for syntax highlighting, and other things. This plugin helps configure treesitter for neovim

-- List all related parsers in arrays to keep things clean
local general_parsers = {"json", "make", "yaml", "bash"}
local lua_parsers = {"lua", "luadoc", "vim", "vimdoc"} -- this is essentially evenrything for neovim/ vim
local go_parsers = {"go", "gomod"}
local web_parsers = {"html", "css", "javascript", "typescript"}

local all_parsers = vim.tbl_flatten({
	general_parsers,
	lua_parsers,
	go_parsers,
	web_parsers,
})

-- From here on is a custom neovim command for checking parsers are installed
local function check_parsers()
    local parsers = require("nvim-treesitter.parsers")

    local results = {}

    for _, lang in ipairs(all_parsers) do
        local installed = parsers.has_parser(lang)
        table.insert(results, lang .. ": " .. (installed and "installed" or "NOT installed"))
    end

    return results
end

local function show_in_floating_window(lines)
    local buf = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)

    local width = 40
    local height = #lines + 2
    local opts = {
        relative = 'editor',
        width = width,
        height = height,
        col = (vim.o.columns - width) / 2,
        row = (vim.o.lines - height) / 2,
        style = 'minimal',
        border = 'rounded',
    }

    vim.api.nvim_open_win(buf, true, opts)
end

-- Create the command
vim.api.nvim_create_user_command("TSCheckParsers", function()
    local results = check_parsers()
    show_in_floating_window(results)
end, {})

return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	main = 'nvim-treesitter.configs',
	opts = {
		ensure_installed = all_parsers,
		auto_install = true,
		highlight = {
			enable = true,
		},
		indent = {
			enable = true
		},
	}
}
