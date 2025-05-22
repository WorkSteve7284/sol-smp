tag @s add reaper_scythe1
playsound minecraft:block.sculk_shrieker.shriek player @a[distance=..20] ~ ~ ~ 1
effect clear @e[distance=..7,nbt={HurtTime:10s}]
particle dust{color:[0.71,0.3,0.61],scale:1} ~ ~ ~ 0.5 1 0.5 0.5 150
execute as @e[distance=..7,nbt={HurtTime:10s},limit=1] at @s run function vred:reaper_scythe/reaper_hit1
effect give @s minecraft:instant_health 1 2
effect give @s minecraft:saturation 1 3
scoreboard players set @s[tag=!no_cooldown] reaper_cooldown 300
tag @s remove reaper_scythe1