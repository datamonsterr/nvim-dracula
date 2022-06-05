local config = {}

config.options = {
  enable = {
    aerial = true,
    bufferline = true,
    cmp = true,
    dashboard = true,
    hop = true,
    gitsigns = true,
    indent_blankline = true,
    ["neo-tree"] = true,
    notify = true,
    ["nvim-tree"] = true,
    ["nvim-web-devicons"] = true,
    ["symbols-outline"] = true,
    telescope = true,
    ["which-key"] = true,
  },
}

function config.set_options(opts)
  opts = opts or {}
  config.options = vim.tbl_deep_extend("force", config.options, opts)
end

return config
