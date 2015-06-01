
return{
	TubeTimer = function(unitTest)
		local timer = TubeTimer{
			observingStep = 1
		}

		unitTest:assertType(timer, "Timer")
		unitTest:assertNil(timer.observingStep)

		local t = TubeTimer{cell = TubeCell{initialWater = 10, flow = 1}}
		t:execute(10)
	end
}

