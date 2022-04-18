vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "nvim-dracula"

C = require("nvim-dracula.colors")
Config = require("nvim-dracula.config")

local base = require("nvim-dracula.base")
local treesitter = require("nvim-dracula.treesitter")
local lsp = require("nvim-dracula.lsp")
local markdown = require("nvim-dracula.markdown")
local plugins_hl = require("nvim-dracula.plugins_hl")

local sources = { base, treesitter, lsp, markdown, plugins_hl }

for _, source in ipairs(sources) do
	for group, spec in pairs(require("user.dracula_theme." .. source)) do
		vim.api.nvim_set_hl(0, group, spec)
	end
end
