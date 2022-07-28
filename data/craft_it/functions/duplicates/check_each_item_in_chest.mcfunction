#> craft_it:duplicates/check_each_item_in_chest

data modify storage craft_it:temp CurrentOthers set from storage craft_it:temp OtherItems

# check current chest item for duplicates
tellraw @a "new item"
function craft_it:duplicates/item_duplicate_check

execute if score @s ci_temp matches 1 run data modify storage craft_it:temp FinalChestItems append from storage craft_it:temp ThisChestItems[0]
#execute if score @s ci_temp matches 1 run tellraw @p ["",{"text":"added new item to finalchest: ","color":"green"},{"nbt":"ThisChestItems[0]","storage":"craft_it:temp"}]
data remove storage craft_it:temp ThisChestItems[0]

# recursive case
execute if data storage craft_it:temp ThisChestItems[0] run function craft_it:duplicates/check_each_item_in_chest