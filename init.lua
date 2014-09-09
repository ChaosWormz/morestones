--register node
minetest.register_node("morestones:limestone", {
    description = "Limestone",
    tiles = {"stones_plus_limestone.png"},
    is_ground_content = true,
    groups = {cracky=2, stone=1},
    legacy_mineral = true,
    sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("morestones:marble", {
    description = "Marble",
    tiles = {"mtz_marble_pink.png"},
    is_ground_content = true,
    groups = {cracky=2, stone=1},
    legacy_mineral = true,
    sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("morestones:slate", {
    description = "Slate",
    tiles = {"mtz_slate_native.png"},
    is_ground_content = true,
    groups = {cracky=2, stone=1},
    legacy_mineral = true,
    sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("morestones:travertine", {
    description = "Travertine",
    tiles = {"stones_plus_travertine.png"},
    is_ground_content = true,
    groups = {cracky=2, stone=1},
    legacy_mineral = true,
    sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("morestones:syenite", {
    description = "Syenite",
    tiles = {"stones_plus_syenite.png"},
    is_ground_content = true,
    groups = {cracky=2, stone=1},
    legacy_mineral = true,
    sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("morestones:comendite", {
    description = "Comendite",
    tiles = {"stones_plus_comendite.png"},
    is_ground_content = true,
    groups = {cracky=2, stone=1},
    legacy_mineral = true,
    sounds = default.node_sound_stone_defaults(),
})

--register ores for mapgen

minetest.register_ore({
    ore_type = "scatter",
    ore = "morestones:limestone",
    wherein = "default:stone",
    clust_scarcity = 19*19*19,
    clust_num_ores = 10,
    clust_size = 12,
    height_min = -31000,
    height_max = -800,
    flags = "absheight",
})

minetest.register_ore({
    ore_type = "sheet",
    ore = "morestones:marble",
    wherein = "default:stone",
	clust_size = 4,
    height_min = -1500,
    height_max = 200,
	noise_params =  {offset=0, scale=1, spread={x=175, y=200, z=175}, seed=1619, octaves=2, persist=0.35}
})

minetest.register_ore({
    ore_type = "sheet",
    ore = "morestones:slate",
    wherein = "default:stone",
	--	clust_scarcity = 4*4*4,
    clust_size = 1,
    height_min = -500,
    height_max = 100,
	noise_params =  {offset=0, scale=2, spread={x=256, y=256, z=256}, seed=7120, octaves=2, persist=0.45}
})

minetest.register_ore({
    ore_type = "scatter",
    ore = "morestones:travertine",
    wherein = "default:stone",
    clust_scarcity = 25*25*25,
    clust_num_ores = 18,
    clust_size = 24,
    height_min = -31000,
    height_max = -1500,
    flags = "absheight",
})

minetest.register_ore({
    ore_type = "scatter",
    ore = "morestones:syenite",
    wherein = "default:stone",
    clust_scarcity = 25*25*25,
    clust_num_ores = 8,
    clust_size = 15,
    height_min = -31000,
    height_max = -1000,
    flags = "absheight",
})

minetest.register_ore({
    ore_type = "scatter",
    ore = "morestones:comendite",
    wherein = "default:stone",
    clust_scarcity = 18*18*18,
    clust_num_ores = 4,
    clust_size = 10,
    height_min = -31000,
    height_max = -100,
    flags = "absheight",
})

dofile(minetest.get_modpath("morestones") .. "/stairs.lua")
