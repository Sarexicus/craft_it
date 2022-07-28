#> craft_it:allocate_items

execute as @e[tag=ci_chest] at @s run function craft_it:items/collect_items
function craft_it:items/distribute_items