local M = {}
local override = {}

function override.colors(colors)
  require("nightfox.override").colors = colors
end

function override.highlights(highlights)
  require("nightfox.override").highlights = highlights
end

M.override = override
function M.setup(opts)
  if opts.colors then
    M.override.colors(opts.colors)
  end

  if opts.highlights then
    M.override.highlights(opts.highlights)
  end
end

function M.apply()
  vim.cmd "hi clear"
  if vim.fn.exists "syntax_on" then
    vim.cmd "syntax reset"
  end
  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "dracula"

  C = require "nvim-dracula.colors"

  local sources = { "css", "base", "treesitter", "lsp", "markdown", "plugins_hl", "diagnostics", "cmp" }

  for _, source in ipairs(sources) do
    for group, spec in pairs(require("nvim-dracula." .. source)) do
      vim.api.nvim_set_hl(0, group, spec)
    end
  end
end

return M
