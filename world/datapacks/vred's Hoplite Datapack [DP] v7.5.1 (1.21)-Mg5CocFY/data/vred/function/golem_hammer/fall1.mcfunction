tag @s remove golem_jump
effect give @s resistance 1 255 true
playsound minecraft:entity.generic.explode player @a[distance=..20] ~ ~ ~ 1
tag @s add golem_shockwave
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:netherite_block"},Radius:0f,RadiusPerTick:1.5f,Duration:7}
execute if score #skins_vfx.enabled item_check matches 1.. if predicate vred:golem_hammer_skin run function vred:golem_hammer/hi1
execute store result storage vred:weapon_damage golem_hammer float 1 run scoreboard players get #golem_hammer hoplite_weapondmg
execute as @e[distance=..7,tag=!golem_shockwave,predicate=!vred:stuff] at @s run function vred:golem_hammer/explode with storage vred:weapon_damage
#execute as @a[distance=..7,tag=!golem_shockwave] at @s run function vred:golem_hammer/explode with storage vred:weapon_damage
tag @s remove golem_shockwave