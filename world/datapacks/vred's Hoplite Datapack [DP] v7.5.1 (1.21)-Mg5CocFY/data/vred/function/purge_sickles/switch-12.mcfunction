execute as @s[tag=!purge_sickles.enabled] if score #purge_sickles.enabled item_check matches 1.. at @s run function vred:purge_sickles/switch-1
execute as @s[tag=!purge_sickles.enabled] if score #purge_sickles.enabled item_check matches ..0 at @s run function vred:purge_sickles/switch-2
tag @s remove purge_sickles.enabled