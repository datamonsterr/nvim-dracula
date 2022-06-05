local M = {}

M.config = require "nvim-dracula.config"

function M.setup(user)
  M.config = vim.tbl_deep_extend("force", user, M.config)
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
    if M.config.enable[plugin] then
      for group, spec in pairs(highlight) do
        vim.api.nvim_set_hl(0, group, spec)
      end
    end
  end
end

return M
