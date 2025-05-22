execute as @s[tag=!hoplite_health.enabled] if score #hoplite_health.enabled item_check matches 1.. at @s run function vred:hoplite_health/switch-1
execute as @s[tag=!hoplite_health.enabled] if score #hoplite_health.enabled item_check matches ..0 at @s run function vred:hoplite_health/switch-2
tag @s remove hoplite_health.enabled