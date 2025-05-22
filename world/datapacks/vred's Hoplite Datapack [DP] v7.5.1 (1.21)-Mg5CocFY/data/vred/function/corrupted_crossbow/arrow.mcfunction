data merge entity @s {item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_poison"}}}}
execute if entity @s[nbt={inGround:1b}] run function vred:corrupted_crossbow/arrow_hit
execute at @s if entity @e[distance=..4,predicate=!vred:stuff,type=!arrow,predicate=!vred:corrupted_crossbow] run function vred:corrupted_crossbow/arrow_hit
kill @s[nbt={inGround:1b}]