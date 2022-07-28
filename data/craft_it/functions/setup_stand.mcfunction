#> craft_it:setup_stand

execute rotated ~ 0 run fill ^1 ^ ^ ^1 ^ ^ minecraft:furnace replace air

execute rotated ~ 0 run fill ~ ~ ~ ~ ~ ~ minecraft:crafting_table replace air
execute rotated ~ 0 run fill ~ ~1 ~ ~ ~1 ~ minecraft:lime_shulker_box replace air

execute if data storage craft_it:settings {extra_workstations:true} rotated ~ 0 run fill ^-1 ^ ^ ^-1 ^ ^ minecraft:smithing_table replace air
execute if data storage craft_it:settings {extra_workstations:true} rotated ~ 0 run fill ^-1 ^1 ^ ^-1 ^1 ^ minecraft:stonecutter replace air

# execute rotated ~ 0 run fill ^1 ^1 ^ ^1 ^1 ^ minecraft:grindstone[face=floor] replace air

tag @s remove ci_chest_unready