--register node
minetest.register_node("morestones:limestone", {
description = "Lime stone",
tiles = {"morestones_limestone.png"},
is_ground_content = true,
groups = {cracky=2, stone=1},
legacy_mineral = true,
sounds = default.node_sound_stone_defaults(),
})


minetest.register_node("morestones:marble", {
description = "Marble",
tiles = {"morestones_marble.png"},
is_ground_content = true,
groups = {cracky=2, stone=1},
legacy_mineral = true,
sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("morestones:slate", {
description = "Slate",
tiles = {"morestones_slate.png"},
is_ground_content = true,
groups = {cracky=2, stone=1},
legacy_mineral = true,
sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("morestones:travertine", {
description = "Travertine",
tiles = {"morestones_travertine.png"},
is_ground_content = true,
groups = {cracky=2, stone=1},
legacy_mineral = true,
sounds = default.node_sound_stone_defaults(),
})

--register ore

minetest.register_ore({
ore_type = "scatter",
ore = "morestones:limestone",
wherein = "default:stone",
clust_scarcity = 15*15*15,
clust_num_ores = 12,
clust_size = 4,
height_min = -31000,
height_max = -1000,
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
ore = "travertine",
wherein = "default:stone",
clust_scarcity = 25*25*25,
clust_num_ores = 18,
clust_size = 14,
height_min = -31000,
height_max = -1500,
flags = "absheight",
})
