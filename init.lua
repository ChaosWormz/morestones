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
    ore_type = "scatter",
    ore = "morestones:marble",
    wherein = "default:stone",
    clust_scarcity = 21*21*21,
    clust_num_ores = 12,
    clust_size = 7,
    height_min = -31000,
    height_max = -1500,
    flags = "absheight",
})

minetest.register_ore({
    ore_type = "scatter",
    ore = "morestones:slate",
    wherein = "default:stone",
    clust_scarcity = 21*21*21,
    clust_num_ores = 16,
    clust_size = 12,
    height_min = -31000,
    height_max = -2100,
    flags = "absheight",
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

