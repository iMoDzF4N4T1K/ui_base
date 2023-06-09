local a = {}
local b
local c = 1
local d = 0

local function e(f, g)
  local h = core_environment.getTimeOfDay()
  h.time = math.abs(f + g / 60 - 12) / 12 * 0.5
  core_environment.setTimeOfDay(h)
end

local function i(g)
  if b.timesync.realtime and b.timesync.enabled then
    local j = os.date("!*t", os.time() + (b.timesync.offsetHours * 60 + g) * 60)
    e(j.hour, j.min)
  end
end

local function k()
  if b.timesync.enabled then
    local j = os.date("!*t", os.time() + b.timesync.offsetHours * 60 * 60)
    e(j.hour, j.min)
  end
end

local function l(m, n, o)
  d = d + m
  if d >= c then
    i(d / 60)
  end
end

local function p()
  b = require("settings/config")
  k()
end

a.onExtensionLoaded = p
a.onUpdate = l

return a