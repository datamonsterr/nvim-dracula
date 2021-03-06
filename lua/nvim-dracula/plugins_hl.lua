local plugins = {
  "symbols-outline",
  "gitsigns",
  "which-key",
  "hop",
  "indent_blankline",
  "nvim-tree",
  "aerial",
  "cmp",
  "telescope",
  "bufferline",
  "nvim-web-devicons",
  "notify",
  "neo-tree",
}
local highlights = {}

for _, plugin in pairs(plugins) do
  highlights = vim.tbl_deep_extend("force", highlights, require("nvim-dracula.plugins." .. plugin))
end

return highlights
