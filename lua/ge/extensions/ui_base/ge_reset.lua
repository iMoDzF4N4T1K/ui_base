local a = {}
local b = 0
local c, d

local function e(f)
  if not c.reset.enabled then
    guihooks.trigger('toastrMsg', { type = "warning", title = c.reset.title, msg = c.reset.disabledMessage, config = { timeOut = c.messageDuration } })
    return
  end

  if b >= c.reset.timeout or c.reset.timeout == -1 then
    b = 0
    be:resetVehicle(f)
  else
    local g = c.reset.message:gsub("{secondsLeft}", math.floor(c.reset.timeout - b))
    guihooks.trigger('toastrMsg', { type = "warning", title = c.reset.title, msg = g, config = { timeOut = c.messageDuration } })
  end
end

local function h()
  d = extensions.freeroam_freeroam.onResetGameplay
  extensions.freeroam_freeroam.onResetGameplay = e
end

local function i()
  c = require("settings/config")
  h()
end

local function j()
  extensions.freeroam_freeroam.onResetGameplay = d
end

local function k(l, m, n)
  b = b + l
end

a.onExtensionLoaded = i
a.onExtensionUnloaded = j
a.onUpdate = k

return a
