function vred:sonic_crossbowv2/sc
kill @e[type=arrow,distance=..5,nbt={life:0s,inGround:0b}]
scoreboard players set @s[tag=!no_cooldown] sonic_cooldown 400
give @s[gamemode=survival] arrow
give @s[gamemode=adventure] arrow
