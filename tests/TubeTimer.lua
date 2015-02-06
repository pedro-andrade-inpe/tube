
return{
	TubeTimer = function(unitTest)
		local timer = TubeTimer{
			observingStep = 1
		}

		unitTest:assert_type(timer, "Timer")
		unitTest:assert_nil(timer.observingStep)
	end
}

