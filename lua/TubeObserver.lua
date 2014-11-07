
--- Type to observe the simulation
-- @param model.cell A TubeCell.
-- @usage TubeObserver{cell = cell}
function TubeObserver(model)
	Observer{
		subject     = model.cell,
		attributes  = {"water"},
		xLabel      = "time",
		yLabel      = "l",
		type        = "chart"
	} 
end

