summon area_effect_cloud ~ ~ ~ {ReapplicationDelay:20,Radius:1f,RadiusPerTick:0.075f,RadiusOnUse:0f,Duration:60,potion_contents:{potion:"minecraft:strong_poison"}}
execute at @s run execute on origin run function vred:corrupted_crossbow/arrow_prehit
kill @s