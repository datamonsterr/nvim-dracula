local plugins_highlight = {}
local extend = function(table)
  plugins_highlight = vim.tbl_deep_extend("force", require("nvim-dracula.all_plugins_hl." .. table), plugins_highlight)
end
local check_avail = function(plugin)
  local is_avail, _ = pcall(require, plugin)
  return is_avail
end

if check_avail "neo-tree.nvim" then
  extend "neo-tree"
end
if check_avail "telescope" then
  extend "telescope"
end
extend "bufferline"
extend "nvim-web-devicons"
extend "nvim-notify"
extend "indent-blankline"
extend "symbol-outline"
extend "nvim-window"
extend "gitsigns"
extend "which-key"
extend "hop"

return plugins_highlight
