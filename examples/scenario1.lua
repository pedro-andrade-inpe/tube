require("tube")

--- Simulation of a Tube with a very small observing time.
-- @name scenario1
-- @class variable
scenario1 = Tube{
	observingStep = 0.1
}

scenario1:execute(20)

