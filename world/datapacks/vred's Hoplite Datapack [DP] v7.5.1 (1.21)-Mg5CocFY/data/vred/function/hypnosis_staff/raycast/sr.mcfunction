
scoreboard players set @s ray_steps 200
scoreboard players set @s ray_success 0
tag @s add hypnosis_staff
execute anchored eyes run function vred:hypnosis_staff/raycast/ray1
tag @s remove hypnosis_staff
