$execute as @e[tag=!mine,distance=..5,predicate=!vred:stuff] at @s run damage @s $(warpick) player_explosion by @a[tag=mine,limit=1]
execute if score #skins_vfx.enabled item_check matches 1.. as @a[tag=mine] if predicate vred:warpick_skin run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 1 1 1 0.2 100 force
execute if score #skins_vfx.enabled item_check matches 1.. as @a[tag=mine] if predicate vred:warpick_skin run particle minecraft:totem_of_undying ~ ~ ~ 2 2 2 0.2 100 force
particle explosion_emitter ~ ~ ~
playsound minecraft:entity.generic.explode hostile @a[distance=..10] ~ ~ ~ 1 1 1
function vred:warpick/armor_hit