function vred:sonic_crossbowv2/sc2
scoreboard players add @s armadillo_count 1
scoreboard players operation #hi ID = @s ID 
execute anchored eyes positioned ^ ^ ^0.8 summon minecraft:armadillo run function vred:armadillo_detonator/throw
execute if items entity @s[predicate=!vred:double_crossbow,predicate=vred:armadillo_detonator_right] weapon.mainhand *[minecraft:enchantments~[{enchantments:"minecraft:multishot"}]] run tag @s add armadillo_multishot
execute if items entity @s[predicate=vred:double_crossbow,predicate=vred:armadillo_detonator_right] weapon.mainhand *[minecraft:enchantments~[{enchantments:"minecraft:multishot"}]] run tag @s add armadillo_multishot
execute if items entity @s[predicate=!vred:double_crossbow,predicate=vred:armadillo_detonator_left] weapon.offhand *[minecraft:enchantments~[{enchantments:"minecraft:multishot"}]] run tag @s add armadillo_multishot
execute if entity @s[tag=armadillo_multishot] anchored eyes positioned ^2 ^ ^.8 summon minecraft:armadillo run function vred:armadillo_detonator/throw
execute if entity @s[tag=armadillo_multishot] anchored eyes positioned ^-2 ^ ^.8 summon minecraft:armadillo run function vred:armadillo_detonator/throw
scoreboard players add @s[tag=!no_cooldown,scores={armadillo_count=3..}] armadillo_cooldown 240
scoreboard players set @s[tag=!no_cooldown,scores={armadillo_count=3..}] armadillo_count 0
tag @s remove armadillo_multishot