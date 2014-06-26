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
    tiles = {"stones_plus_slate.png"},
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
    clust_size = 6,
    height_min = -31000,
    height_max = -800,
    flags = "absheight",
})

minetest.register_ore({
    ore_type = "sheet",
    ore = "morestones:marble",
    wherein = "default:stone",
		--wherein = "air",
		clust_size = 4,
    height_min = -500,
    height_max = 200,
		--noise_threshhold = -0.2,
		noise_params =  {offset=0, scale=1, spread={x=200, y=200, z=200}, seed=1619, octaves=2, persist=0.35}
})

minetest.register_ore({
    ore_type = "sheet",
    ore = "morestones:slate",
    wherein = "default:stone",
    clust_size = 3,
    height_min = -100,
    height_max = 50,
		noise_params =  {offset=137, scale=1, spread={x=225, y=100, z=225}, seed=739, octaves=2, persist=0.25}
})

minetest.register_ore({
    ore_type = "scatter",
    ore = "morestones:travertine",
    wherein = "default:stone",
    clust_scarcity = 25*25*25,
    clust_num_ores = 18,
    clust_size = 14,
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
