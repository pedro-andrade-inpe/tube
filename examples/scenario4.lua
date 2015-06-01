import("tube")

--@example Simulation of a tube with a small observing time, checking zero and 30 time steps.
scenario4 = Tube{
	checkZero = true,
	observingStep = 0.1,
	finalTime = 30
}

scenario4:execute()

