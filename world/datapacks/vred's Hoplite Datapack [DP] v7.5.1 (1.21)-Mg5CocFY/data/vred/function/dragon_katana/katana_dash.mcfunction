execute at @s run playsound minecraft:entity.enderman.teleport voice @a[distance=..10] ^ ^ ^ 3
tag @s add dragon_katana1
particle portal ~ ~ ~ 0.5 0.5 0.5 0.5 150
scoreboard players set @s dragon_katana 80
execute run function vred:dragon_katana/loop
execute if block ~ ~-0.5 ~ #vred:non_solid run effect give @s slow_falling 5 0 true
# execute as @s at @s positioned ^ ^1 ^ if score @s katana_score matches 1 run function vred:dragon_slash2 
#execute as @s at @s positioned ^ ^1 ^ if score @s katana_score matches 1 run function vred:dragon_slash1
scoreboard players set @s[tag=!no_cooldown] katan_cooldown 180
execute at @s run particle portal ~ ~ ~ 0.5 0.5 0.5 0.5 150
tag @s remove dragon_katana1
# schedule function vred:dragon_slash2_ 10t