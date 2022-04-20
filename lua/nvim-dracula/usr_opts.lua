local M = {}

function M.setup(user_settings)
  if type(user_settings) == "table" then
    M.usr_colors = user_settings.colors
    M.usr_highlights = user_settings.highlights
  else
    vim.notify("setup needs a table value", "error", "Dracula")
  end
end

return M
