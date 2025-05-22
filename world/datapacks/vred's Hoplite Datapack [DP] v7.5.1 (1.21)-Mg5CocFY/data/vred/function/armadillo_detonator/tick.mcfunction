execute if score @s armadillo_cooldown matches 1.. run function vred:armadillo_detonator/c
execute if score @s armadillo_cooldown matches 1.. run function vred:armadillo_detonator/c1
execute as @s[predicate=!vred:double_crossbow,predicate=vred:armadillo_detonator,scores={crossbow2=1..,armadillo_cooldown=0}] at @s run function vred:armadillo_detonator/activate
execute as @s[predicate=!vred:double_crossbow,predicate=vred:armadillo_detonator,scores={crossbow2=1..,armadillo_cooldown=1..}] at @s run function vred:sonic_crossbowv2/sc2
execute as @s[predicate=vred:double_crossbow,predicate=vred:armadillo_detonator_right,scores={crossbow2=1..,armadillo_cooldown=0}] at @s run function vred:armadillo_detonator/activate
execute as @s[predicate=vred:double_crossbow,predicate=vred:armadillo_detonator_right,scores={crossbow2=1..,armadillo_cooldown=1..}] at @s run function vred:sonic_crossbowv2/sc2
scoreboard players set @s[scores={crossbow2=1..}] crossbow2 0


scoreboard players operation #temp ID = @s ID
execute as @s at @s positioned ~ ~2.1 ~ run tp @e[tag=riding_player,type=item_display,sort=nearest,limit=1,predicate=vred:id_check,distance=..6] ^ ^ ^
execute unless entity @s[tag=armadillo_on] run kill @e[tag=riding_player,type=item_display,sort=nearest,limit=1,predicate=vred:id_check,distance=..6]

