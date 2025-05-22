advancement revoke @s only vred:excalibur
execute if score @s excalibur_active matches 1.. run playsound minecraft:block.anvil.land player @a[distance=..10] ^ ^ ^ 1 0.75
execute if score #skins_vfx.enabled item_check matches 1.. if predicate vred:excalibur_skin run tag @s add excalibur_skin
execute if score @s[tag=!excalibur_skin] excalibur_active matches 1.. run particle minecraft:totem_of_undying ~ ~ ~ 0.5 0.5 0.5 0.2 100 force
execute if score @s[tag=excalibur_skin] excalibur_active matches 1.. run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.5 0 0.5 0.1 50 force
tag @s remove excalibur_skin