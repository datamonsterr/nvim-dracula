local plugins_highlight = {}
local extend = function(table)
  plugins_highlight = vim.tbl_deep_extend("force", require("nvim-dracula.all_plugins_hl." .. table), plugins_highlight)
end
local check_avail = function(plugin)
  local is_avail, _ = pcall(require, plugin)
  return is_avail
end
local init = function(plugin)
  if check_avail(plugin) then
    extend(plugin)
  end
end

init "neo-tree"
init "telescope"
init "bufferline"
init "nvim-web-devicons"
init "nvim-notify"
init "indent-blankline"
init "symbol-outline"
init "nvim-window"
init "gitsigns"
init "which-key"
init "hop"

return plugins_highlight
