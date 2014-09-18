require("tube")

--- Simulation of a tube with a small observing time, checking zero and 30 time steps.
-- @name scenario4
-- @class variable
scenario4 = Tube{
	checkZero = true,
	observingStep = 0.1
}

scenario4:execute(30)

