
return{
	TubeChart = function(unitTest)
		local model = {cell = Cell{water = 2}}

		local c = TubeChart(model)

		unitTest:assert_type(c, "Chart")
	end
}

