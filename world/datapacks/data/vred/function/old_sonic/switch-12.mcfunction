execute as @s[tag=!old_sonic.enabled] if score #old_sonic.enabled item_check matches 1.. at @s run function vred:old_sonic/switch-1
execute as @s[tag=!old_sonic.enabled] if score #old_sonic.enabled item_check matches ..0 at @s run function vred:old_sonic/switch-2
tag @s remove old_sonic.enabled