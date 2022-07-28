#> craft_it:duplicates/duplicate_check

data modify storage craft_it:temp OtherItems set value []
data modify storage craft_it:temp OtherItems set from entity @s ArmorItems[3].tag.OtherItems

data modify storage craft_it:temp ThisChestItems set from block ~ ~1 ~ Items

data modify storage craft_it:temp FinalChestItems set value []

function craft_it:duplicates/check_each_item_in_chest

data modify block ~ ~1 ~ Items set from storage craft_it:temp FinalChestItems
