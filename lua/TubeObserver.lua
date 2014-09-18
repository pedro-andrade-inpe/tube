
--- Type to observe the simulation
-- @param model.cell A TubeCell.
function TubeObserver(model)
	Observer{
		subject     = model.cell,
		attributes  = {"water"},
		xLabel      = "time",
		yLabel      = "l",
		type        = "chart"
	} 
end

