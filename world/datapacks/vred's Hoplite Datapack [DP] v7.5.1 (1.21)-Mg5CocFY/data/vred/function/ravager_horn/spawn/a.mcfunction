summon ravager ~ ~ ~ {Tags:["ravager_horn"],NoAI:1b,Passengers:[{id:"minecraft:interaction",width:1f,height:1f,response:1b,Tags:["ravager_int"]}]}
scoreboard players operation @e[type=minecraft:ravager,tag=ravager_horn,tag=!id.added,distance=..5] ID = @s ID
tag @s add ravager_spawned