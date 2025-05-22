scoreboard players operation #temp ID = @s ID
execute store result score @s hypnosis_active if entity @e[tag=hypnosis_mob,predicate=vred:id_check]
execute if score @s hypnosis_cooldown matches 1.. run function vred:hypnosis_staff/raycast/c
execute if score @s hypnosis_cooldown matches 1.. run function vred:hypnosis_staff/raycast/c1