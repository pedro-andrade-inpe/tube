require("tube")

--- Simulation of a Tube along 30 time steps.
-- @name scenario2
-- @class variable
scenario2 = Tube{
	simulationSteps = 30
}

scenario2:execute(20)

