Package.Require("Config.lua")

Package.Subscribe("Load", function()
    for k, v in pairs(VarietyVehicles2) do
		Package.Export(k, VarietyVehicles2[k])
        Package.Call(
            "sandbox",
            "AddSpawnMenuItem",
            Package.GetPath(),
            "vehicles",
			k,
			Package.GetPath(),
			k
        )
    end
end)