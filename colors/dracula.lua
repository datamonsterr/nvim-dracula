package.loaded["nvim-dracula"] = nil
package.loaded["nvim-dracula.base"] = nil
package.loaded["nvim-dracula.cmp"] = nil
package.loaded["nvim-dracula.lsp"] = nil
package.loaded["nvim-dracula.markdown"] = nil
package.loaded["nvim-dracula.plugins_hl"] = nil
package.loaded["nvim-dracula.treesitter"] = nil

require "nvim-dracula"

-- Support Feline
local feline_avail, feline = pcall(require, "feline")
if feline_avail then
  local feline_theme = require "nvim-dracula.colors"
  feline_theme.bg = feline_theme.menu
  feline.add_theme("dracula", feline_theme)
end
