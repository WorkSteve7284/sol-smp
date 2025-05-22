execute as @s[scores={cloud_switch=0},tag=!cloud_sworde] at @s run function vred:cloud_sword/1
execute as @s[scores={cloud_switch=0},tag=cloud_sworde] at @s run function vred:cloud_sword/2
scoreboard players set @s cloud_switch 0