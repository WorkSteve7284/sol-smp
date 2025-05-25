execute as @s[tag=!skins_vfx.enabled] if score #skins_vfx.enabled item_check matches 1.. at @s run function vred:skins/switch-1
execute as @s[tag=!skins_vfx.enabled] if score #skins_vfx.enabled item_check matches ..0 at @s run function vred:skins/switch-2
tag @s remove skins_vfx.enabled