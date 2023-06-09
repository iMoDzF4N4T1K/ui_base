local a = {}
local b, c

local function d(e)
  if e >= 0 then
    return "+"
  end
  return ""
end

local function f()
  if b.motd.enabled then
    local g = b.motd.description:gsub("{serverTime}", os.date("!%I:%M %p", os.time() + b.timesync.offsetHours * 60 * 60) .. " UTC" .. d(b.timesync.offsetHours) .. b.timesync.offsetHours)
    guihooks.trigger('ScenarioChange', { name = b.motd.title, description = g, introType = b.motd.type })
  end
end

local function h()
  b = require("settings/config")
  if b.motd.enabled then
    guihooks.trigger("ChangeState", { state = "scenario-start" })
  end
  if b.restrictMenu then
    extensions.core_gamestate.setGameState("scenario", "freeroam", "ui_base")
  end
end

local function i()
end

local function j(k, l)
  local m = be:getPlayerVehicle(0)
  if m then
    core_vehicles.replaceVehicle(k, l)
  else
    core_vehicles.spawnNewVehicle(k, l)
  end
end

local function n(o)
  if o == "start" then
    f()
  elseif o == "play" then
    if not c then
      j("pickup", {})
    end
  end
end

local function p(q)
  if b.motd.type == "selectableVehicle" then
    if q.model and q.config then
      local r = createPlayerSpawningData(q.model, q.config, q.color, q.licenseText)
      j(r.model, r.options)
      c = true
    end
  end
end

a.onExtensionLoaded = h
a.onExtensionUnloaded = i
a.onVehicleSelected = p
a.onScenarioUIReady = n

return a