--CastRay
--2026
--jack_dawson16160

--Simple utility module that handles raycasting using luau types.

local CastRay = {}

export type RayResult = {
    Instance: Instance,
    Position: Vector3,
    Normal: Vector3,
    Material: Enum.Material
}

function CastRay.Cast(origin: Vector3, direction: Vector3, params: RaycastParams)
    local raycast = workspace:Raycast(origin, direction, params)

    if raycast then
        local result = {
            Instance = raycast.Instance,
            Position = raycast.Position,
            Normal = raycast.Normal,
            Material = raycast.Material
        } :: RayResult

        return result
    end
end

return CastRay