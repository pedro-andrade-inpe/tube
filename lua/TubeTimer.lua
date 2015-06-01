
--- Create a timer for the Tube model.
-- @arg model.observingStep Time interval for observing the model execution.
-- @arg model.cell A TubeCell that stores water.
-- @usage TubeTimer{cell = cell, observingStep = 2}
function TubeTimer(model)
	if model.observingStep == 1 then model.observingStep = nil end
	return Timer{
		Event{action = function(event)
			model.cell:execute()			
		end},
		Event{start = 0, period = model.observingStep, action = function(e)
			model.cell:notify(e)
		end}
	}
end

