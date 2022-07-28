#> craft_it:tick

execute as @e[tag=ci_chest_unready] at @s run function craft_it:setup_stand

execute if data storage craft_it:settings {free_fuel:true} as @e[tag=ci_chest] at @s positioned ^1 ^ ^ run function craft_it:tick/furnace_tick
