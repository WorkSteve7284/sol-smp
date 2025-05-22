scoreboard players set @s[tag=!no_cooldown] golem_cooldown 280
scoreboard players set $strength player_motion.api.launch 17500
execute if score #skins_vfx.enabled item_check matches 1.. if predicate vred:golem_hammer_skin anchored eyes positioned ^ ^ ^2 run function vred:shrink_ray/boom_ring_2
execute if score #skins_vfx.enabled item_check matches 1.. if predicate vred:golem_hammer_skin anchored eyes positioned ^ ^ ^4 run function vred:shrink_ray/boom_ring_3
execute positioned ~ ~1 ~ rotated ~ ~-20 run function player_motion:api/launch_looking
execute as @s at @s run playsound entity.ender_dragon.flap player @a[distance=..20] ~ ~ ~ 1
scoreboard players set @s golem_timer 10
tag @s add golem_jump