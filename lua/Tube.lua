
--- Water in the Tube model. It contains a TubeCell, a TubeTimer, and a TubeChart.
-- @arg data.numRuns Number of simulation steps of the model.
-- @arg data.initialWater Initial amount of water in the tube.
-- @arg data.flow Amount of water that flows out of the tube.
-- @arg data.observingStep Time interval to observe the amount of water along the simulation.
-- @arg data.checkZero Deny having a negative amount of water in the model.
Tube = Model{
	initialWater    = Choice{min = 10, default = 200},
	finalTime       = Choice{min = 1, default = 10},
	flow            = Choice{min = 1, default = 20},
	observingStep   = Choice{min = 0.1, max = 1, step = 0.1, default = 1},
	checkZero       = false,
	check = function(model)
		verify(model.flow < model.initialWater, toLabel("flow").." should be less than "..toLabel("initialWater")..".")
	end,
	init = function(model)
		model.cell  = TubeCell(model)
		model.timer = TubeTimer(model)
		model.chart = TubeChart(model)
	end,
	interface = function()
		return {{"Choice", "boolean"}}
	end
}

