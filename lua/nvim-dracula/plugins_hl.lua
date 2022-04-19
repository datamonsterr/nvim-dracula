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

-- Notice: The file name must be the same as the plugins folder name ( which we can call in require )
init "neo-tree"
init "telescope"
init "bufferline"
init "nvim-web-devicons"
init "notify"
extend "symbols-outline" -- Error with init
init "gitsigns"
init "which-key"
init "hop"
init "indent_blankline"

return plugins_highlight
