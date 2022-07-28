#> craft_it:calculate_duplicates

execute as @e[tag=ci_chest] at @s run function craft_it:duplicates/find_other_items
execute as @e[tag=ci_chest] at @s run function craft_it:duplicates/duplicate_check