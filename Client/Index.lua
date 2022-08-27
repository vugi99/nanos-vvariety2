Package.Require("Config.lua")

Package.Subscribe("Load", function()
    for k, v in pairs(VarietyVehicles2) do
        Package.Call(
            "sandbox",
            "AddSpawnMenuItem",
            Package.GetPath(),
            "vehicles",
            k,
            k,
            "assets://vvariety2-assets/Thumbnails/" .. VarietyVehicles2_Assets[k] .. ".jpg"
        )
    end
end)
