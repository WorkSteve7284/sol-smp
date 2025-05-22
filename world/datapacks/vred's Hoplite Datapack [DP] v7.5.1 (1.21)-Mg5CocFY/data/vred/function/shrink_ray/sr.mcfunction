function vred:sonic_crossbowv2/sc2
tag @s add shrink_arrow
scoreboard players set @s ray_steps 500
scoreboard players set @s ray_success 0
execute if score #skins_vfx.enabled item_check matches 1.. if predicate vred:shrink_ray_skin anchored eyes positioned ^ ^ ^2 run function vred:shrink_ray/boom_ring_2
execute if score #skins_vfx.enabled item_check matches 1.. if predicate vred:shrink_ray_skin anchored eyes positioned ^ ^ ^4 run function vred:shrink_ray/boom_ring_3
execute anchored eyes positioned ^ ^ ^1 run function vred:shrink_ray/ray1
tag @s remove shrink_arrow
