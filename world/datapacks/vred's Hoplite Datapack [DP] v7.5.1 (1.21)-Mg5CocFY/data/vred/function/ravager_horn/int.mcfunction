execute on target run scoreboard players operation #temp ID = @s ID
execute on target run ride @s mount @e[type=ravager,distance=..4,tag=ravager_horn,limit=1,predicate=vred:id_check]
execute as @s[nbt={interaction:{}}] run data remove entity @s interaction
execute as @s[nbt={attack:{}}] run data remove entity @s attack
execute unless predicate vred:vehicle run function vred:ravager_horn/death