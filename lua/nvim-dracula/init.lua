local M = {}

vim.cmd "hi clear"
if vim.fn.exists "syntax_on" then
  vim.cmd "syntax reset"
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "dracula"

C = require "nvim-dracula.colors"

local sources = { "base", "treesitter", "lsp", "markdown", "plugins_hl", "diagnostics", "cmp" }

for _, source in ipairs(sources) do
  for group, spec in pairs(require("nvim-dracula." .. source)) do
    vim.api.nvim_set_hl(0, group, spec)
  end
end

function M.setup(user_settings)
  if type(user_settings) == "table" then
    M.usr_colors = user_settings.colors
    M.usr_highlights = user_settings.highlights
  else
    vim.notify("setup needs a table value", "error", "Dracula")
  end
end

if require("nvim-dracula").usr_highlights then
  for group, spec in pairs(require("nvim-dracula").usr_highlights) do
    vim.api.nvim_set_hl(0, group, spec)
  end
end

return M
