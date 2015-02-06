
return {
	Tube = function(unitTest)

		local error_func = function()
			t = Tube{flow = -1}
		end

		unitTest:assert_error(error_func, "Argument 'flow' should be greater than or equal to 1.")
	end
}
