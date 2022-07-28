#> craft_it:first_time_load

data modify storage craft_it:temp CurrentCheck set value {}
scoreboard objectives add ci_temp dummy
scoreboard objectives add ci_temp2 dummy
data merge storage craft_it:settings {extra_workstations:false, free_fuel:false, random_items:1}

data merge storage craft_it:data {init:true}

tellraw @a "[craft it!] setup complete"