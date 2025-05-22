scoreboard players operation #temp ID = @s ID
particle minecraft:enchant ~ ~-1 ~ 0.2 0.5 0.2 0.1 5 force @a[predicate=vred:id_check]
execute unless predicate vred:vehicle1 run kill @s
execute if entity @a[predicate=vred:id_check,distance=15..] run execute on vehicle run tp @s @a[predicate=vred:id_check,limit=1]