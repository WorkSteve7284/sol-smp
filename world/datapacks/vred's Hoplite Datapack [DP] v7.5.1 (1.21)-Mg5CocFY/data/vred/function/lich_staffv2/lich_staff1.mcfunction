tag @s add lich_staffv2
execute as @s[scores={lich_cooldown=..0}] at @s anchored eyes run summon item_display ^ ^ ^1 {Tags:["iceball","vred_projectile"]}
execute as @s at @s run tp @e[type=minecraft:item_display,tag=iceball,nbt=!{item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_model_data":6}}}] ^ ^ ^1 ~ ~
scoreboard players operation @e[type=minecraft:item_display,tag=iceball,nbt=!{item:{id:"minecraft:snowball",count:1,components:{"minecraft:custom_model_data":6}}}] ID = @s ID
tag @s remove lich_staffv2
scoreboard players set @s staff_use 0
scoreboard players remove @s lich_charges 1
scoreboard players set @s cloud_help 7