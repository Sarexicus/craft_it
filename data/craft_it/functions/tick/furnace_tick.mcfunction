#> craft_it:tick/furnace_tick
#> instantly cooks furnace items without fuel
#> context: block position of furnace, from ci_chest

data merge block ~ ~ ~ {BurnTime:199s}
execute if data block ~ ~ ~ {CookTime:1s} run data merge block ~ ~ ~ {CookTime:199s}