summon item_display ~ ~ ~ {teleport_duration:0,Tags:["vred_int1-ride"],Passengers:[{id:"interaction",width:1,height:1,response:1b,Tags:["vred_interaction"]}]}
scoreboard players operation #ball ID = @s ID
execute as @e[distance=..5,type=item_display,tag=!vred_int1-tagged] run function vred:interaction1/id_add
tag @s add int_spawned