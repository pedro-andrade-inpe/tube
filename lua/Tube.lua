
--- Water in the Tube model. It contains a TubeCell, a TubeTimer, and a TubeChart.
-- @arg data.numRuns Number of simulation steps of the model.
-- @arg data.initialWater Initial amount of water in the tube.
-- @arg data.flow Amount of water that flows out of the tube.
-- @arg data.observingStep Time interval to observe the amount of water along the simulation.
-- @arg data.checkZero Deny having a negative amount of water in the model.
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
		verify(model.flow > 0, "Flow should be greater than zero.")
		verify(model.initialWater > 0, "Initial water should be greater than zero.")
		verify(model.observingStep > 0, "Observing step should be greater than zero.")
	end
}

