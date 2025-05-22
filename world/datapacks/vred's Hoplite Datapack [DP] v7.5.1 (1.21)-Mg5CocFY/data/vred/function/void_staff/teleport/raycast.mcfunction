scoreboard players set @s ray_steps 300
scoreboard players set @s ray_success 0
execute if score @s void_staffcounter matches 0 run function vred:void_staff/teleport/ray
execute if score @s void_staffcounter matches 1 run function vred:void_staff/teleport/ray1
scoreboard players add @s[scores={ray_success=1..}] void_staffcounter 1