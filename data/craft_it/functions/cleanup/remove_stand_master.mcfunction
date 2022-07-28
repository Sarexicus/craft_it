#> craft_it:cleanup/remove_stand_master

fill ~ ~ ~ ~ ~ ~ air replace light_blue_shulker_box
fill ~ ~1 ~ ~ ~1 ~ air replace black_carpet

playsound minecraft:block.nether_bricks.break master @a[distance=..10] ~ ~ ~ 1 0.5
particle minecraft:poof ~ ~ ~ 0 1 0 0.1 20 normal @a
kill @e[type=item,distance=..2]
kill @s