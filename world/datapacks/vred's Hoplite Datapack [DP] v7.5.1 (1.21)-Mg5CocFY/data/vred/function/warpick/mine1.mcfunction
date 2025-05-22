execute positioned ~ ~ ~ positioned ~ ~ ~ if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~ positioned ~1 ~ ~ if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~ positioned ~ ~ ~1 if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~ positioned ~-1 ~ ~ if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~ positioned ~ ~ ~-1 if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~ positioned ~1 ~ ~-1 if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~ positioned ~-1 ~ ~1 if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~ positioned ~1 ~ ~1 if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~ positioned ~-1 ~ ~-1 if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy

execute positioned ~ ~1 ~ positioned ~ ~ ~ if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~ positioned ~1 ~ ~ if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~ positioned ~ ~ ~1 if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~ positioned ~-1 ~ ~ if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~ positioned ~ ~ ~-1 if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~ positioned ~1 ~ ~-1 if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~ positioned ~-1 ~ ~1 if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~ positioned ~1 ~ ~1 if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~ positioned ~-1 ~ ~-1 if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy

execute positioned ~ ~-1 ~ positioned ~ ~ ~ if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~-1 ~ positioned ~1 ~ ~ if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~-1 ~ positioned ~ ~ ~1 if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~-1 ~ positioned ~-1 ~ ~ if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~-1 ~ positioned ~ ~ ~-1 if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~-1 ~ positioned ~1 ~ ~-1 if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~-1 ~ positioned ~-1 ~ ~1 if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~-1 ~ positioned ~1 ~ ~1 if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy
execute positioned ~ ~-1 ~ positioned ~-1 ~ ~-1 if block ~ ~ ~ #mineable/pickaxe run setblock ~ ~ ~ air destroy

particle explosion_emitter ~ ~ ~
execute as @s if score #skins_vfx.enabled item_check matches 1.. if predicate vred:warpick_skin run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 1 1 1 0.2 100 force
execute as @s if score #skins_vfx.enabled item_check matches 1.. if predicate vred:warpick_skin run particle minecraft:totem_of_undying ~ ~ ~ 2 2 2 0.2 100 force

playsound minecraft:entity.generic.explode hostile @a[distance=..10] ~ ~ ~ 1 1 1
execute as @s run scoreboard players set @s[tag=!no_cooldown] warpick_cooldown 100