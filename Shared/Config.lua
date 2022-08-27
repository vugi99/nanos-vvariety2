

VarietyVehicles2_Assets = {
    Sedan = "SK_Sedan_01a",
    SUV = "SK_SUV_01a",
    Camper = "SK_CamperVan_01a",
    BoxTruck = "SK_BoxTruck_01a",
}

VarietyVehicles2 = {
    Sedan = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "vvariety2-assets::" .. VarietyVehicles2_Assets.Sedan, CollisionType.Normal, true, false, true, "nanos-world::A_Vehicle_Engine_01")

		vehicle:SetEngineSetup(900, 5500, 1200, 0.05, 5, 600)
		vehicle:SetAerodynamicsSetup(1400, 0.3, 480, 190, 0.4)
		vehicle:SetSteeringWheelSetup(Vector(-2, 28, 125), 17)
		vehicle:SetHeadlightsSetup(Vector(230, 0, 64))
        vehicle:SetTaillightsSetup(Vector(-232, 0, 80))

		vehicle:SetWheel(0, "Wheel_Front_Left",  30, 20, 45, Vector(), false, true, false, false, false, 1900, 3000, 1000, 1, 2.3, 20, 20, 150, 30, 7, 7, 0, 0.5, 0.57)
		vehicle:SetWheel(1, "Wheel_Front_Right", 30, 20, 45, Vector(), false, true, false, false, false, 1900, 3000, 1000, 1, 2.3, 20, 20, 150, 30, 7, 7, 0, 0.5, 0.57)
		vehicle:SetWheel(2, "Wheel_Rear_Left",   30, 20,  0, Vector(), true, true,  true, false, false, 1900, 3000, 1000, 1, 3, 20, 20, 150, 30, 7, 7, 0, 0.5, 0.57)
		vehicle:SetWheel(3, "Wheel_Rear_Right",  30, 20,  0, Vector(), true, true,  true, false, false, 1900, 3000, 1000, 1, 3, 20, 20, 150, 30, 7, 7, 0, 0.5, 0.57)

		vehicle:SetDoor(0, Vector(31, -150, 90), Vector(1, -40, 60), Rotator(0, 0, 0), 60, -150)
		vehicle:SetDoor(1, Vector(31,  150, 90), Vector(1, 40, 60), Rotator(0, 0, 0), 60,  150)
        vehicle:SetDoor(2, Vector(-80, -150, 90), Vector(-95, -40, 70), Rotator(0, 0, 0), 60, -150)
        vehicle:SetDoor(3, Vector(-80,  150, 90), Vector(-95, 40, 70), Rotator(0, 0, 0), 60,  150)

		vehicle:RecreatePhysics()
		return vehicle
	end,

    SUV = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "vvariety2-assets::" .. VarietyVehicles2_Assets.SUV, CollisionType.Normal, true, false, true, "nanos-world::A_Vehicle_Engine_14")

		vehicle:SetEngineSetup(650, 4600)
		vehicle:SetAerodynamicsSetup(1900, 0.3, 505, 190, 0.3)
		vehicle:SetSteeringWheelSetup(Vector(-2, 26, 120), 17)
        vehicle:SetHeadlightsSetup(Vector(233, 0, 75))
        vehicle:SetTaillightsSetup(Vector(-256, 0, 95))

		vehicle:SetWheel(0, "Wheel_Front_Left", 35, 22, 48, Vector(), false, true, false, false, false, 2000, 3000, 1200, 1, 2, 20, 20, 220, 40, 6, 9, 0, 0.5, 0.75)
		vehicle:SetWheel(1, "Wheel_Front_Right", 35, 22, 48, Vector(), false, true, false, false, false, 2000, 3000, 1200, 1, 2, 20, 20, 220, 40, 6, 9, 0, 0.5, 0.75)
		vehicle:SetWheel(2, "Wheel_Rear_Left", 35, 22, 0, Vector(0, 0, 0), true, true, true, false, false, 2000, 3000, 1200, 1, 2.8, 20, 20, 220, 40, 6, 9, 0, 0.5, 0.75)
		vehicle:SetWheel(3, "Wheel_Rear_Right", 35, 22, 0, Vector(0, 0, 0), true, true, true, false, false, 2000, 3000, 1200, 1, 2.8, 20, 20, 220, 40, 6, 9, 0, 0.5, 0.75)

		vehicle:SetDoor(0, Vector( 29, -150, 100), Vector(-5, -40, 85), Rotator(0, 0, 0), 60, -150)
		vehicle:SetDoor(1, Vector( 29, 150, 100), Vector( -5,   40, 85), Rotator(0, 0,  0), 60, 150)
		vehicle:SetDoor(2, Vector(-95, -150, 100), Vector(-95, -40,  95), Rotator(0, 0,  0), 60, -150)
		vehicle:SetDoor(3, Vector(-95, 150, 100), Vector(-95,  40,  95), Rotator(0, 0,  0), 60, 150)

		vehicle:RecreatePhysics()
		return vehicle
	end,

    Camper = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "vvariety2-assets::" .. VarietyVehicles2_Assets.Camper, CollisionType.Normal, true, false, true, "nanos-world::A_Vehicle_Engine_08")

		vehicle:SetEngineSetup(550, 5200)
		vehicle:SetAerodynamicsSetup(2700, 0.6, 600, 220, 0.3)
		vehicle:SetSteeringWheelSetup(Vector(4, 23, 115), 15)
		vehicle:SetHeadlightsSetup(Vector(293, 0, 90))
        vehicle:SetTaillightsSetup(Vector(-304, 0, 95))

		vehicle:SetWheel(0, "Wheel_Front_Left",    38, 20, 40, Vector(), false, true, false, true, false, 3000, 3800, 1000, 1, 1, 20, 20, 400, 100, 6, 5, 0, 0.5, 0.52)
		vehicle:SetWheel(1, "Wheel_Front_Right",   38, 20, 40, Vector(), false, true, false, true, false, 3000, 3800, 1000, 1, 1, 20, 20, 400, 100, 6, 5, 0, 0.5, 0.52)
		vehicle:SetWheel(2, "Wheel_Rear_Left", 38, 40, 0, Vector(0, 0, 0), true, true, true, true, false, 3000, 3800, 2000, 1, 2, 20, 20, 800, 150, 6, 3, 0, 0.5, 0.52)
		vehicle:SetWheel(3, "Wheel_Rear_Right",38, 40, 0, Vector(0, 0, 0), true, true, true, true, false, 3000, 3800, 2000, 1, 2, 20, 20, 800, 150, 6, 3, 0, 0.5, 0.52)

		vehicle:SetDoor(0, Vector(155, -170, 100), Vector(150, -45, 115), Rotator(0, 0, 0), 80, -170)
		vehicle:SetDoor(1, Vector(155,  170, 100), Vector(150,  45, 115), Rotator(0, 0, 0), 80,  170)

		vehicle:RecreatePhysics()
		return vehicle
	end,

    BoxTruck = function(location, rotation)
		local vehicle = Vehicle(location or Vector(), rotation or Rotator(), "vvariety2-assets::" .. VarietyVehicles2_Assets.BoxTruck, CollisionType.Normal, true, false, true, "nanos-world::A_Vehicle_Engine_08")

		vehicle:SetEngineSetup(540, 4400)
		vehicle:SetAerodynamicsSetup(3200, 0.6, 550, 230, 0.3)
		vehicle:SetSteeringWheelSetup(Vector(4, 44, 115), 20)
		vehicle:SetHeadlightsSetup(Vector(270, 0, 106))
        vehicle:SetTaillightsSetup(Vector(-273, 0, 63))

		vehicle:SetWheel(0, "Wheel_Front_Left",    43, 24, 42, Vector(), false, true, false, true, false, 2900, 3800, 1000, 1, 1, 20, 20, 400, 100, 3, 8, 0, 0.5, 0.55)
		vehicle:SetWheel(1, "Wheel_Front_Right",   43, 24, 42, Vector(), false, true, false, true, false, 2900, 3800, 1000, 1, 1, 20, 20, 400, 100, 3, 8, 0, 0.5, 0.55)
		vehicle:SetWheel(2, "Wheel_Rear_Left", 43, 48, 0, Vector(0, 0, 0), true, true, true, true, false, 2900, 3800, 2000, 1, 2, 20, 20, 800, 150, 3, 6, 0, 0.5, 0.55)
		vehicle:SetWheel(3, "Wheel_Rear_Right",43, 48, 0, Vector(0, 0, 0), true, true, true, true, false, 2900, 3800, 2000, 1, 2, 20, 20, 800, 150, 3, 6, 0, 0.5, 0.55)

		vehicle:SetDoor(0, Vector(85, -175, 110), Vector(78, -68, 155), Rotator(0, 0, 0), 80, -175)

		vehicle:RecreatePhysics()
		return vehicle
	end,
}