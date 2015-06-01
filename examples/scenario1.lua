import("tube")

--@example Simulation of a Tube with a very small observing time.
scenario1 = Tube{
	observingStep = 0.1
}

scenario1:execute()

