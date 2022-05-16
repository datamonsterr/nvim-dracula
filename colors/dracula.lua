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
  feline.add_theme("dracula", require "nvim-dracula.colors")
end
