function vred:beehive_blaster/beehive_blaster2

scoreboard players set @s ray_steps 200
scoreboard players set @s ray_success 0
tag @s add beehive_blast
execute anchored eyes run function vred:beehive_blaster/raycast/ray1
tag @s remove beehive_blast
