
return{
	TubeTimer = function(unitTest)
		local timer = TubeTimer{
			observingStep = 1
		}

		unitTest:assertType(timer, "Timer")
		unitTest:assertNil(timer.observingStep)
	end
}

