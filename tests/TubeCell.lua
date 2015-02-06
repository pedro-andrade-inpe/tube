
return{
	TubeCell = function(unitTest)
		local cell = TubeCell{
			initialWater = 55,
			checkZero = true,
			flow = 7
		}

		unitTest:assert_type(cell, "Cell")
		unitTest:assert_type(cell.execute, "function")
	end
}

