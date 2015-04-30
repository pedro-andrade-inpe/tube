
--- Type to observe the simulation.
-- @arg model.cell A TubeCell.
-- @usage TubeChart{cell = cell}
function TubeChart(model)
	return Chart{
		subject = model.cell,
		select  = "water",
		yLabel  = "liters"
	} 
end

