#> craft_it:distribute_items

execute as @e[tag=ci_chest_master] at @s run data modify storage craft_it:temp GlobalItems set from block ~ ~ ~ Items
execute as @e[tag=ci_chest] at @s run data modify block ~ ~1 ~ Items set from storage craft_it:temp GlobalItems