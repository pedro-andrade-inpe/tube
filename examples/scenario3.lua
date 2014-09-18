require("tube")

--- Simulation of a Tube along 30 time steps verifying whether the water is less than zero.
-- @name scenario3
-- @class variable
scenario3 = Tube{
	checkZero = true
}

scenario3:execute(30)

