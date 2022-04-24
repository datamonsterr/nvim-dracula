local M = {}
function M.deep_extend(...)
  local lhs = {}
  for _, rhs in ipairs { ... } do
    for k, v in pairs(rhs) do
      if type(lhs[k]) == "table" and type(v) == "table" then
        lhs[k] = M.deep_extend(lhs[k], v)
      else
        lhs[k] = v
      end
    end
  end

  return lhs
end

local store = {
  colors = {},
  highlights = {},
  has_override = false,
}

local function reset()
  store.colors = {}
  store.highlights = {}
  store.has_override = false
end

return setmetatable({ reset = reset }, {
  __index = function(_, value)
    if store[value] then
      return store[value]
    end
  end,

  __newindex = function(_, key, value)
    if store[key] then
      store[key] = M.deep_extend(store[key], value or {})
      store.has_override = true
    end
  end,
})
