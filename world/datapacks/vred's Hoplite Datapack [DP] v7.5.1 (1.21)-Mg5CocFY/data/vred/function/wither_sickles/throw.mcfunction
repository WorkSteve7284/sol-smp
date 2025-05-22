execute as @s at @s anchored eyes run summon minecraft:item_display ^ ^ ^1 {Tags:["wither_sickles","vred_projectile"],transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,-1.0000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}
execute anchored eyes run tp @e[type=minecraft:item_display,tag=wither_sickles,nbt=!{item:{id:"minecraft:stone_hoe",count:1,components:{"minecraft:custom_model_data":3}}}] ^ ^ ^1 ~ ~
scoreboard players operation @e[type=minecraft:item_display,tag=wither_sickles,nbt=!{item:{id:"minecraft:stone_hoe",count:1,components:{"minecraft:custom_model_data":3}}}] ID = @s ID
scoreboard players operation #temp ID = @s ID
scoreboard players add @s wither_sickles_display 1
#execute in vred:data_void summon armor_stand run function vred:wither_sickles/summon

scoreboard players set @s[tag=!no_cooldown,scores={wither_sickles_display=2..}] wither_sickles_cooldown 140
