
--- Represent a tube.
-- @param model.initialWater The initial amount of water in the tube.
-- @param model.checkZero Avoid less than zero units of water in the tube?
-- @param model.flow The amount of water that flows out of the tube.
-- @usage cell = TubeCell{initialWater = 10, flow = 5, checkZero = false}
function TubeCell(model)
	local cell = Cell{
		water = model.initialWater,
		--- Execute the flow of water out of the Tube.
		-- @usage tubeCell:execute()
		execute = function(self)
			self.water = self.water - model.flow
			if model.checkZero then
				if self.water < 0 then
					self.water = 0
				end
			end
		end
	}
	return cell
end

