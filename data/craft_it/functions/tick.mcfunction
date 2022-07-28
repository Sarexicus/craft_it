#> craft_it:tick

execute as @e[tag=ci_chest_unready,tag=ci_chest] at @s run function craft_it:setup/setup_stand
execute as @e[tag=ci_chest_unready,tag=ci_chest_master] at @s run function craft_it:setup/setup_master_stand

execute if data storage craft_it:settings {free_fuel:true} as @e[tag=ci_chest] at @s positioned ^1 ^ ^ run function craft_it:tick/furnace_tick
