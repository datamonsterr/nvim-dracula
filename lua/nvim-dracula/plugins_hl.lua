local plugins_highlight = {}
local extend = function(table)
	plugins_highlight = vim.tbl_deep_extend(
		"force",
		require("user.dracula_theme.all_plugins_hl." .. table),
		plugins_highlight
	)
end
local is_available = function(plugin)
	return packer_plugins ~= nil and packer_plugins[plugin] ~= nil
end

if is_available("neo-tree.nvim") then
	extend("neo-tree")
end

if is_available("telescope.nvim") then
	extend("telescope")
end

if is_available("bufferline.nvim") then
	extend("bufferline")
end

if is_available("nvim-web-devicons") then
	extend("nvim-web-devicons")
end

if is_available("nvim-notify") then
	extend("nvim-notify")
end

if is_available("indent-blankline.nvim") then
	extend("indent-blankline")
end

if is_available("symbols-outline.nvim") then
	extend("symbol-outline")
end

if is_available("nvim-window.git") then
	extend("nvim-window")
end

if is_available("gitsigns.nvim") then
	extend("gitsigns")
end
return plugins_highlight
