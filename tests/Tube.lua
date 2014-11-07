

return {
	Tube = function(unitTest)

		local error_func = function()
			t = Tube{flow = -1}
		end

		unitTest:assert_error(error_func, "Flow should be greater than zero.")

	end
}
