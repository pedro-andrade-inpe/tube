
-- Water in the Tube model. It contains a TubeCell, a TubeTimer, and a TubeObserver.
-- @class function
-- @param numRuns Number of simulation steps of the model.
-- @param initialWater Initial amount of water in the tube.
-- @param flow Amount of water that flows out of the tube.
-- @param observingStep Time interval to observe the amount of water along the simulation.
-- @param checkZero Deny having a negative amount of water in the model.
Tube = Model{
	simulationSteps = 10, 
	initialWater    = 200,           
	flow            = 20,
	observingStep   = 1,
	checkZero       = false,
	setup = function(model)
		model.cell  = TubeCell(model)
		model.timer = TubeTimer(model)
		TubeObserver(model)
	end,
	check = function(model)
		assert(model.simulationSteps > 0, "Simulation steps should be greater than zero")
		assert(model.initialWater > 0, "Initial water should be greater than zero")
	end
}

