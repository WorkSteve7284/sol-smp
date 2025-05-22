#Apply motion to a non-player
execute in vred:data_void positioned 0.0 0 0.0 run summon marker ^ ^ ^0.1 {Tags: ["direction"]}
data modify entity @s Motion set from entity @e[type=marker,tag=direction,limit=1] Pos

kill @e[type=marker,tag=direction]