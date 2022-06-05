local M = {}

function M.setup(custom_opts)
  require("nvim-dracula.config").set_options(custom_opts)
end

function M.main()
  vim.cmd "hi clear"
  if vim.fn.exists "syntax_on" then
    vim.cmd "syntax reset"
  end
  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "dracula"

  C = require "nvim-dracula.colors"

  local sources = { "css", "base", "treesitter", "lsp", "markdown", "diagnostics" }

  for _, source in pairs(sources) do
    for group, spec in pairs(require("nvim-dracula." .. source)) do
      vim.api.nvim_set_hl(0, group, spec)
    end
  end

  for plugin, highlight in pairs(require "nvim-dracula.plugins_hl") do
    for group, spec in pairs(highlight) do
      vim.api.nvim_set_hl(0, group, spec)
    end
  end
end

return M
