
--- Create a timer for the Tube model.
-- @param model.observingStep Time interval for observing the model execution.
-- @param model.cell A TubeCell that stores water.
function TubeTimer(model)
	return Timer{
		Event{action = function(event)
			model.cell:execute()			
		end},
		Event{time = 0, period = model.observingStep, action = function(e)
			model.cell:notify(e:getTime())
		end}
	}
end

