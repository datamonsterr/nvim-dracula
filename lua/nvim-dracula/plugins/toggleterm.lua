local toggleterm = {
  ToggleTermNormal = { link = "Normal" },
}

for i in 1, 20 do
  toggleterm["ToggleTerm" .. i .. "Normal"] = { link = "Normal" }
  toggleterm["ToggleTerm" .. i .. "NormalFloat"] = { link = "Normal" }
  toggleterm["ToggleTerm" .. i .. "FloatBorder"] = { link = "Normal" }
end

return toggleterm
