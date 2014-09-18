require("tube")

--- Simulation of a Tube along 30 time steps.
-- @name scenario2
-- @class variable
scenario2 = Tube{
	initialWater = 250,
	flow = 25
}

scenario2:execute(30)

