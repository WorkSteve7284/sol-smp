scoreboard players operation #temp ID = @s ID
execute store result storage vred:weapon_damage aiglos float 1 run scoreboard players get #aiglos hoplite_weapondmg
execute at @s run execute as @e[type=armor_stand,tag=aiglos_itemkeeper,predicate=vred:id_check] run function vred:aiglos/return_logic with storage vred:weapon_damage
execute if score #skins_vfx.enabled item_check matches 1.. if entity @s[tag=aiglos_skin] run particle minecraft:trial_spawner_detection ~ ~ ~ 2 2 2 0.3 200 force
execute if score #skins_vfx.enabled item_check matches 1.. if entity @s[tag=aiglos_skin] run particle minecraft:totem_of_undying ~ ~ ~ 2 2 2 0.2 100 force
execute as @a[predicate=vred:id_check] at @s run tag @s add aiglosreturn
particle explosion_emitter
playsound minecraft:entity.generic.explode hostile @a[distance=..60] ~ ~ ~ 1 1 1
kill @s
#summon creeper ~ ~0.5 ~ {Fuse:1,ignited:1b,CustomName:'"Aiglos"',Invulnerable:1b}