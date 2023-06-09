local a = {}
local b = {}
local c

local function d(e, f)
  if b[e] then
    return scenetree.findObjectById(b[e])
  end

  b[e] = 0
  local g = scenetree.findClassObjects(e)
  if g and tableSize(g) > 0 then
    for h, i in pairs(g) do
      local j = scenetree.findObject(i)
      if j and (i == f or not f) then
        b[e] = j:getID()
        return j
      end
    end
  end

  return nil
end

local function k(l)
  local m = d("Precipitation", "rain_coverage") or d("Precipitation")
  if m and l then
    m.numDrops = l
    if c.weathersync.rainIsSnow then
      m.dataBlock = scenetree.findObject("Snow_menu")
    end
  end
end

local function n()
  if c.weathersync.enabled then
    local o = c.weathersync.cloudCover / 100 * 2.5
    core_environment.setCloudCover(o)

    local p = c.weathersync.fogDensity / 10000
    core_environment.setFogDensity(p)

    local l = c.weathersync.rainDrops * 10
    k(l)

    core_environment.setWindSpeed(c.weathersync.windSpeed)
    core_environment.setGravity(c.weathersync.gravity)
  end
end

local function q()
  c = rerequire("settings/config")
  n()
end

a.onExtensionLoaded = q

return a