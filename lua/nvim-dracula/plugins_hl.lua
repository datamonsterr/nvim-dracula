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
  "dashboard",
  "neo-tree",
}
local highlights = {}

for _, plugin in pairs(plugins) do
  local config = require "nvim-dracula.config"
  if config.options.enable[plugin] then
    highlights[plugin] = require("nvim-dracula.plugins." .. plugin)
  end
end

return highlights
