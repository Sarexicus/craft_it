#> craft_it:duplicates/find_other_items
#> puts other items in context through head armor

data modify storage craft_it:temp OtherItems set value []
execute as @e[tag=ci_chest,distance=0.1..] at @s run data modify storage craft_it:temp OtherItems append from block ~ ~1 ~ Items[].id

data modify entity @s ArmorItems[3].tag.OtherItems set value []
data modify entity @s ArmorItems[3].tag.OtherItems set from storage craft_it:temp OtherItems
