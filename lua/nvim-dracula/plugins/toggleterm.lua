local toggleterm = {
  ToggleTermNormal = { link = "Normal" },
}

for i in 1, 20 do
  toggleterm["ToggleTerm" .. tostring(i) .. "Normal"] = { link = "Normal" }
  toggleterm["ToggleTerm" .. tostring(i) .. "NormalFloat"] = { link = "Normal" }
  toggleterm["ToggleTerm" .. tostring(i) .. "FloatBorder"] = { link = "Normal" }
end

return toggleterm
