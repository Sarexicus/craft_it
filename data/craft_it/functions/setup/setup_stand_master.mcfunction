#> craft_it:setup/setup_stand_master
#> sets up master stand
#> context: @e[tag=ci_chest_master,tag=ci_chest_unready]

data modify entity @s Pose.Head[0] set value 0f

setblock ~ ~ ~ light_blue_shulker_box
setblock ~ ~1 ~ black_carpet
tag @s remove ci_chest_unready