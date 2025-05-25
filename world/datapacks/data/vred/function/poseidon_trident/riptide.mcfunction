execute if score #skins_vfx.enabled item_check matches 1.. if predicate vred:poseidon_skin anchored eyes positioned ^ ^ ^2 run function vred:shrink_ray/boom_ring_2
execute if score #skins_vfx.enabled item_check matches 1.. if predicate vred:poseidon_skin anchored eyes positioned ^ ^ ^4 run function vred:shrink_ray/boom_ring_3
scoreboard players set @s mjolnir_timer 40
tag @s add poseidon_riptide
execute summon minecraft:item_display run function vred:poseidon_trident/throw
scoreboard players set $strength player_motion.api.launch 40000
execute positioned ^ ^0.5 ^ run function player_motion:api/launch_looking
scoreboard players set @s[tag=!no_cooldown] poseidon_cooldown 320
playsound item.trident.riptide_3 player @a[distance=..30] ^ ^ ^ 2
tag @s remove poseidon_riptide