execute unless block ~ ~ ~ minecraft:air run scoreboard players set @s ray_success 1
#execute if entity @e[distance=..3,tag=!guardian_cannon,predicate=!vred:stuff] run scoreboard players set @s ray_success 1
$damage @e[distance=..3,tag=!guardian_cannon,predicate=!vred:stuff,limit=1] $(guardian_cannon) minecraft:player_attack by @s from @s
scoreboard players remove @s ray_steps 1
particle dust_color_transition{from_color:[0,0,1],scale:0.5,to_color:[0.0,1.0,0.25]} ~ ~ ~ 0.01 0.01 0.01 0 5 force @a
execute if score @s ray_steps matches 1.. if score @s ray_success matches 0 positioned ^ ^ ^0.1 run function vred:guardian_cannon/ray1 with storage vred:weapon_damage