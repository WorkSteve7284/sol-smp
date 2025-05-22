execute if score @s excalibur_active matches 1 run scoreboard players set @s[tag=!no_cooldown] excalibur_cooldown 340
execute if score @s excalibur_active matches 1.. run effect give @s resistance 1 5 true
execute if score @s excalibur_cooldown matches 1.. run function vred:excalibur/c
execute if score @s excalibur_cooldown matches 1.. run function vred:excalibur/c1