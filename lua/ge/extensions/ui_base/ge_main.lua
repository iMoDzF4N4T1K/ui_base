local a = {}
local b

local function c()
  b = jsonReadFile("settings/resource.json")
  log("I", b.name, "version " .. b.version .. "loaded")
end

local function d()
  log("I", b.name, "version " .. b.version .. "unloaded, goodbye!")
  Lua:requestReload()
end

a.onExtensionLoaded = c
a.onExtensionUnloaded = d

return a