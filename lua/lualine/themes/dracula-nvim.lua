local dracula = {}

local C = require "nvim-dracula.colors"

local bg = C.selection

dracula.normal = {
  a = { fg = C.black, bg = C.purple, gui = "bold" },
  b = { fg = C.purple, bg = bg },
  c = { fg = C.white, bg = bg },
}

dracula.visual = {
  a = { fg = C.black, bg = C.pink, gui = "bold" },
  b = { fg = C.pink, bg = bg },
}

dracula.inactive = {
  a = { fg = C.white, bg = C.gray, gui = "bold" },
  b = { fg = C.black, bg = C.white },
}

dracula.replace = {
  a = { fg = C.black, bg = C.yellow, gui = "bold" },
  b = { fg = C.yellow, bg = bg },
  c = { fg = C.white, bg = bg },
}

dracula.insert = {
  a = { fg = C.black, bg = C.green, gui = "bold" },
  b = { fg = C.green, bg = bg },
  c = { fg = C.white, bg = bg },
}

return dracula
