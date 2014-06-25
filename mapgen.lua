local YMIN = -4000
local YMAX = 33000
local XMIN = -33000
local XMAX = 33000
local ZMIN = -33000
local ZMAX = 33000

local noiseparams = {
	offset = 0,
	scale = 1,
	spread = {x=256, y=256, z=256},
	seed = -400000000089,
	octaves = 3,
	persist = 0.6
}

minetest.register_on_generated(function(minp, maxp, seed)
	-- abort early if out of bounds for creating marble deposits
	if minp.x < XMIN or maxp.x > XMAX
	or minp.y < YMIN or maxp.y > YMAX
	or minp.z < ZMIN or maxp.z > ZMAX then
		return
	end

	if math.random() < 0.85 then
		return
	end

	local t1 = os.clock()

	local x1 = maxp.x
	local y1 = maxp.y
	local z1 = maxp.z
	local x0 = minp.x
	local y0 = minp.y
	local z0 = minp.z

	print ("[morestones] chunk minp ("..x0.." "..y0.." "..z0..")")

	local c_air = minetest.get_content_id("air")
	local c_marble = minetest.get_content_id("morestones:marble")
	local c_stone = minetest.get_content_id("default:stone")
	local side_length = x1 - x0 + 1
  local map_lengths_xyz = {x=side_length, y=side_length, z=side_length}
	local noise = minetest.get_perlin_map(noiseparams, map_lengths_xyz):get2dMap_flat(minp)

	-- voxel manip
	local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
	local area = VoxelArea:new{MinEdge=emin, MaxEdge=emax}
	local data = vm:get_data()
	local ni = 1

	for z = z0, z1 do
		local stratumdepth = math.random(1, 3)
		for x = x0, x1 do
			local layers = 0
			local sdepth = 0
			for y = y1, y0, -1 do
				local vi = area:index(x, y, z)
				ni = 1
				if data[vi] == c_stone then
					sdepth = sdepth + 1
				else
					sdepth = 0
				end
				if sdepth > 3 then
					if data[vi] == c_stone and noise[ni] > -0.1 and noise[ni] < 0.8  then
						if math.random() <= 0.7 then
							data[vi] = c_marble
						end
						layers = layers + 1
						vi = vi + 1
						ni = ni + 1
					end
				end
				if layers > stratumdepth then
					break
				end
			end
		end
	end

	-- write voxel data to map
	vm:set_data(data)
	vm:set_lighting({day=0, night=0})
	vm:calc_lighting()
	vm:write_to_map(data)

	local chugent = math.ceil((os.clock() - t1) * 1000) --grab how long this took
	print ("[morestones] "..chugent.." ms") --tell people how long it took
end)
