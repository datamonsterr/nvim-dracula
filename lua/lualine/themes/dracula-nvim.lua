local dracula = {}

local C = require "nvim-dracula.colors"

dracula.normal = {
  a = { fg = C.black, bg = C.purple, gui = "bold" },
  b = { fg = C.bright_purple, bg = C.visual, gui = "bold" },
  c = { fg = C.fg, bg = C.gray },
}

dracula.visual = {
  a = { fg = C.black, bg = C.pink, gui = "bold" },
  b = { fg = C.pink, bg = C.visual },
  c = { fg = C.fg, bg = C.gray },
}

dracula.inactive = {
  a = { fg = C.fg, bg = C.gray, gui = "bold" },
  b = { fg = C.black, bg = C.fg },
  c = { fg = C.fg, bg = C.gray },
}

dracula.replace = {
  a = { fg = C.black, bg = C.yellow, gui = "bold" },
  b = { fg = C.yellow, bg = C.visual },
  c = { fg = C.fg, bg = C.gray },
}

dracula.insert = {
  a = { fg = C.black, bg = C.green, gui = "bold" },
  b = { fg = C.green, bg = C.visual },
  c = { fg = C.fg, bg = C.gray },
}

return dracula
