local plugins_highlight = {}
local extend = function(table)
  plugins_highlight = vim.tbl_deep_extend("force", require("nvim-dracula.all_plugins_hl." .. table), plugins_highlight)
end

extend "neo-tree"
extend "telescope"
extend "bufferline"
extend "nvim-web-devicons"
extend "nvim-notify"
extend "indent-blankline"
extend "symbol-outline"
extend "nvim-window"
extend "gitsigns"

return plugins_highlight
