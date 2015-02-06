require("tube")

--@example Simulation of a Tube along 30 time steps.
scenario2 = Tube{
	initialWater = 250,
	flow = 25,
	finalTime = 30
}

scenario2:execute()

