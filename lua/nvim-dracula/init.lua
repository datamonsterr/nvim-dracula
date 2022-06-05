vim.cmd "hi clear"
if vim.fn.exists "syntax_on" then
  vim.cmd "syntax reset"
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "dracula"

C = require "nvim-dracula.colors"

local sources = { "css", "base", "treesitter", "lsp", "markdown", "diagnostics", "plugins_hl" }

for _, source in pairs(sources) do
  for group, spec in pairs(require("nvim-dracula." .. source)) do
    vim.api.nvim_set_hl(0, group, spec)
  end
end
