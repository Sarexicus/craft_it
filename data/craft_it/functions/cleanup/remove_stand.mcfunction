#> craft_it:cleanup/remove_stand

execute rotated ~ 0 run fill ^1 ^ ^ ^1 ^ ^ air replace minecraft:furnace
execute rotated ~ 0 run fill ~ ~ ~ ~ ~ ~ air replace minecraft:crafting_table
execute rotated ~ 0 run fill ~ ~1 ~ ~ ~1 ~ air replace minecraft:lime_shulker_box
execute if data storage craft_it:settings {extra_workstations:true} rotated ~ 0 run fill ^-1 ^ ^ ^-1 ^ ^ air replace minecraft:smithing_table 
execute if data storage craft_it:settings {extra_workstations:true} rotated ~ 0 run fill ^-1 ^1 ^ ^-1 ^1 ^ air replace minecraft:stonecutter

playsound minecraft:block.nether_bricks.break master @a[distance=..10] ~ ~ ~ 1 0.5
particle minecraft:poof ~ ~ ~ 0 1 0 0.1 20 normal @a
kill @e[type=item,distance=..2]
kill @s