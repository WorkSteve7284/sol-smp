scoreboard players set @s[tag=!no_cooldown] sonic_cooldown 480
execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet rotated ~20 ~ run function vred:sonic_crossbowv2/sc
function vred:sonic_crossbowv2/sc
execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet rotated ~-20 ~ run function vred:sonic_crossbowv2/sc
kill @e[type=arrow,distance=..6,nbt={life:0s,inGround:0b}]
give @s[gamemode=survival] arrow
give @s[gamemode=adventure] arrow