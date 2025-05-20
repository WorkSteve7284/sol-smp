execute as @s[tag=!sc.enabled] if score #sc.enabled item_check matches 1.. at @s run function vred:sc/switch-1
execute as @s[tag=!sc.enabled] if score #sc.enabled item_check matches ..0 at @s run function vred:sc/switch-2
tag @s remove sc.enabled