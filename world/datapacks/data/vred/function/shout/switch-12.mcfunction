execute as @s[tag=!shout_crafting.enabled] if score #shout_crafting.enabled item_check matches 1.. at @s run function vred:shout/switch-1
execute as @s[tag=!shout_crafting.enabled] if score #shout_crafting.enabled item_check matches ..0 at @s run function vred:shout/switch-2
tag @s remove shout_crafting.enabled