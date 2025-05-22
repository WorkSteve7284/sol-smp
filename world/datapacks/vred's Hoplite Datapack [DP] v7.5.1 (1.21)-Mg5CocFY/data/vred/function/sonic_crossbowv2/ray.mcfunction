execute if score #old_sonic.enabled item_check matches ..0 unless block ~ ~ ~ #vred:non_solid run function vred:sonic_crossbowv2/explosion
execute if score #old_sonic.enabled item_check matches 1.. unless block ~ ~ ~ #vred:non_solid run function vred:sonic_crossbowv2/old_explosion/1
#execute if entity @e[distance=..3,tag=!sonic_arrow,predicate=!vred:stuff] run function vred:sonic_crossbowv2/explosion
$damage @e[distance=..3,limit=1,tag=!sonic_arrow,predicate=!vred:stuff] $(sonic_crossbow) minecraft:sonic_boom by @a[tag=sonic_arrow,limit=1]
scoreboard players remove @s ray_steps 1
scoreboard players add @s sonic_crossbow_particle 1
execute if score @s sonic_crossbow_particle matches 15 run particle sonic_boom ^ ^ ^
execute if score @s sonic_crossbow_particle matches 15.. run scoreboard players set @s sonic_crossbow_particle 0
execute if score @s ray_steps matches 1.. if score @s ray_success matches 0 positioned ^ ^ ^0.1 run function vred:sonic_crossbowv2/ray with storage vred:weapon_damage