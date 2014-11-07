
--- Water in the Tube model. It contains a TubeCell, a TubeTimer, and a TubeObserver.
-- @param data.numRuns Number of simulation steps of the model.
-- @param data.initialWater Initial amount of water in the tube.
-- @param data.flow Amount of water that flows out of the tube.
-- @param data.observingStep Time interval to observe the amount of water along the simulation.
-- @param data.checkZero Deny having a negative amount of water in the model.
Tube = Model{
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
		assert(model.flow > 0, "Flow should be greater than zero")
		assert(model.initialWater > 0, "Initial water should be greater than zero")
		assert(model.observingStep > 0, "Observing step should be greater than zero")
	end
}

