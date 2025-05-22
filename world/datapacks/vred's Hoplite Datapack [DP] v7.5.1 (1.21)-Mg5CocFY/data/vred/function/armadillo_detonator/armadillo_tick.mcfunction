scoreboard players operation #temp ID = @s ID
execute as @s[tag=!amotion_added,type=armadillo] at @s rotated as @a[predicate=vred:id_check,limit=1,sort=nearest] run function vred:armadillo_detonator/apply_motion
data merge entity @s {state:"scared"}
scoreboard players add @s rayAge 1
execute as @a[predicate=!vred:id_check,distance=..3,tag=!armadillo_on] at @s run function vred:armadillo_detonator/riding/presummon
execute if entity @a[predicate=vred:id_check,tag=armadillo_detonation] run execute as @s at @s run tag @s add armadillo_detonated
execute if score @s rayAge matches 200 run tag @s add armadillo_detonated
scoreboard players add @s[tag=armadillo_detonated] falldistance 1
effect give @s[tag=armadillo_detonated] glowing 2 255
execute if score @s[tag=armadillo_detonated] falldistance matches 10.. run function vred:armadillo_detonator/explosion
#execute if score @s[tag=armadillo_detonated] falldistance matches 0..2 run attribute @s minecraft:generic.scale modifier add vred:armadillo_enlarge 0.5 add_value
#execute if score @s[tag=armadillo_detonated] falldistance matches 2..4 run attribute @s minecraft:generic.scale modifier remove vred:armadillo_enlarge
#execute if score @s[tag=armadillo_detonated] falldistance matches 4..6 run attribute @s minecraft:generic.scale modifier add vred:armadillo_enlarge 0.5 add_value
#execute if score @s[tag=armadillo_detonated] falldistance matches 6..8 run attribute @s minecraft:generic.scale modifier remove vred:armadillo_enlarge
#execute if score @s[tag=armadillo_detonated] falldistance matches 8..10 run attribute @s minecraft:generic.scale modifier add vred:armadillo_enlarge 0.5 add_value
execute if score @s[tag=armadillo_detonated] falldistance matches 0..3 run attribute @s minecraft:generic.scale modifier add vred:armadillo_enlarge 0.55 add_value
execute if score @s[tag=armadillo_detonated] falldistance matches 3..7 run attribute @s minecraft:generic.scale modifier remove vred:armadillo_enlarge
execute if score @s[tag=armadillo_detonated] falldistance matches 7.. run attribute @s minecraft:generic.scale modifier add vred:armadillo_enlarge 0.55 add_value
