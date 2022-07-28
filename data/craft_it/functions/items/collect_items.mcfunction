#> craft_it:items/collect_items
#> context: @e[tag=ci_chest] at @s

data modify storage craft_it:temp CollectItems set value []
data modify storage craft_it:temp CollectItems set from block ~ ~1 ~ Items

execute at @e[tag=ci_chest_master] run setblock ~ ~1 ~ lime_shulker_box
execute at @e[tag=ci_chest_master] run data modify block ~ ~1 ~ Items set from storage craft_it:temp CollectItems
execute at @e[tag=ci_chest_master] run loot insert ~ ~ ~ mine ~ ~1 ~ air{drop_contents:1b}
execute at @e[tag=ci_chest_master] run setblock ~ ~1 ~ black_carpet