scoreboard players set @s[tag=!no_cooldown] ihorn_cooldown 180
playsound minecraft:entity.breeze.wind_burst player @a[distance=..30] ^ ^ ^ 3 1
playsound minecraft:item.goat_horn.sound.3 player @a[distance=..30] ^ ^ ^ 3 1
tag @s add icehorn_blizzard
#summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:snow_block"},Radius:0f,RadiusPerTick:1.75f,Duration:7}
#summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:snow_block"},Radius:0f,RadiusPerTick:1.5f,Duration:7}
#summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:snow_block"},Radius:0f,RadiusPerTick:2f,Duration:7}
summon area_effect_cloud ~ ~0.2 ~ {Particle:{"type":"snowflake"},Radius:0f,RadiusPerTick:1.75f,Duration:7}
summon area_effect_cloud ~ ~0.2 ~ {Particle:{"type":"snowflake"},Radius:0f,RadiusPerTick:1.5f,Duration:7}
summon area_effect_cloud ~ ~0.2 ~ {Particle:{"type":"snowflake"},Radius:0f,RadiusPerTick:2f,Duration:7}
execute store result storage vred:weapon_damage ice_horn float 1 run scoreboard players get #ice_horn hoplite_weapondmg
execute as @e[distance=..10,tag=!icehorn_blizzard,predicate=!vred:stuff1] at @s run function vred:ice_horn/blizzard_wave with storage vred:weapon_damage
tag @s remove icehorn_blizzard