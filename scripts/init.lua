-- Logic
ScriptHost:LoadScript("scripts/utils.lua")
ScriptHost:LoadScript("scripts/logic/logic.lua")
ScriptHost:LoadScript("scripts/logic/regions.lua")

-- Items
Tracker:AddItems("items/items.json")
Tracker:AddItems("items/doors.json")
Tracker:AddItems("items/settings.json")

-- Maps
Tracker:AddMaps("maps/maps.json")

-- Locations
Tracker:AddLocations("locations/locations.json")
Tracker:AddLocations("locations/tomb.json")
Tracker:AddLocations("locations/mechanism_and_hall.json")
Tracker:AddLocations("locations/catacombs.json")
Tracker:AddLocations("locations/ruins.json")

-- Layout
Tracker:AddLayouts("layouts/items.json")
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")

-- AutoTracking for Poptracker
ScriptHost:LoadScript("scripts/autotracking.lua")
