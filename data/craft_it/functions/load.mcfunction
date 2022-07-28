#> craft_it:load

execute unless data storage craft_it:data {init:true} run function craft_it:first_time_load

tellraw @a "[craft it!] loaded!"