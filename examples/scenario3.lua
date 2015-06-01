import("tube")

--@example Simulation of a Tube along 30 time steps verifying whether the water is less than zero.
scenario3 = Tube{
	checkZero = true,
	finalTime = 30
}

scenario3:execute()

