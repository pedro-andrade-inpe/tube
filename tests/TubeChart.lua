
return{
	TubeChart = function(unitTest)
		local model = {cell = Cell{water = 2}}

		local c = TubeChart(model)

		unitTest:assertType(c, "Chart")
	end
}

