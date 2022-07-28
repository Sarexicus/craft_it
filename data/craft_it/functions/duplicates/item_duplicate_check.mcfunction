#> craft_it:duplicates/item_duplicate_check

# try to replace ID of storage with my chest items (if it fails, it's a duplicate)
#tellraw @p ["",{"text":"before: ","color":"green"},{"nbt":"CurrentOthers[0]","storage":"craft_it:temp"}]
execute store success score @s ci_temp run data modify storage craft_it:temp CurrentOthers[0] set from storage craft_it:temp ThisChestItems[0].id
#tellraw @p ["",{"text":"after: ","color":"red"},{"nbt":"CurrentOthers[0]","storage":"craft_it:temp"}]

# remove the current check regardless of result
data remove storage craft_it:temp CurrentOthers[0]

#execute unless score @s ci_temp matches 0 run tellraw @a "no duplicate"

# recursive case: retry unless it's a success or there's no items left
execute unless score @s ci_temp matches 0 if data storage craft_it:temp CurrentOthers[0] run function craft_it:duplicates/item_duplicate_check