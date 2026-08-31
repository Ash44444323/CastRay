--CastRay
--2026
--jack_dawson16160

--Simple utility module that handles raycasting using luau types.

local CastRay = {}

export type Result = {
	Hit: BasePart,
	Position: Vector3,
	Normal: Vector3,
}

function CastRay.Caster(origin: Vector3, direction: Vector3, raycastParams: RaycastParams)
	local raycast = workspace:Raycast(origin, direction, raycastParams)
	if raycast then
		local result: Result = {
			Hit = raycast.Instance,
			Position = raycast.Position,
			Normal = raycast.Normal,
		}
		return result
	end
end

return CastRay
