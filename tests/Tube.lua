
return {
	Tube = function(unitTest)
		local error_func = function()
			t = Tube{flow = -1}
		end

		unitTest:assertError(error_func, "Argument 'flow' should be greater than or equal to 1.")

		local t = Tube{}
	end
}
