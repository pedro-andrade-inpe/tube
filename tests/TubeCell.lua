
return{
	TubeCell = function(unitTest)
		local cell = TubeCell{
			initialWater = 55,
			checkZero = true,
			flow = 7
		}

		unitTest:assertType(cell, "Cell")
		unitTest:assertType(cell.execute, "function")
	end,
	execute = function(unitTest)
		local cell = TubeCell{
			initialWater = 10,
			flow = 7,
			checkZero = true
		}

		cell:execute()
		unitTest:assertEquals(cell.water, 3)

		cell:execute()
		unitTest:assertEquals(cell.water, 0)

		cell = TubeCell{
			initialWater = 5,
			flow = 7,
			checkZero = false
		}

		cell:execute()
		unitTest:assertEquals(cell.water, -2)
	end
}

