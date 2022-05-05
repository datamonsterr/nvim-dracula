local plugins_highlight = {}
local extend = function(table)
  plugins_highlight = vim.tbl_deep_extend("force", require("nvim-dracula.plugins." .. table), plugins_highlight)
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
extend "symbols-outline" -- Error with init

local init_plugins = {
  "gitsigns",
  "which-key",
  "hop",
  "indent_blankline",
  "nvim-tree",
  "aerial",
  "cmp",
  "toggleterm",
  "neo-tree",
  "telescope",
  "bufferline",
  "nvim-web-devicons",
  "notify",
}

for _, plugin in pairs(init_plugins) do
  init(plugin)
end

if vim.fn.exists "g:loaded_dashboard" then
  extend "dashboard" -- Don't know how to require("dashboard")
end

return plugins_highlight
