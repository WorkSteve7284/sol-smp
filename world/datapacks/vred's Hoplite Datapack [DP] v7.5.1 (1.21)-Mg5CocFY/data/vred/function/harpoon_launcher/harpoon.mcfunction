scoreboard players operation #temp ID = @s ID
#execute as @a[predicate=vred:id_check] at @s unless entity @e[type=bat,distance=..1,tag=harpoon_tp1,predicate=vred:id_check] run tp @s ^ ^ ^ facing entity @e[type=bat,tag=harpoon_tp1,limit=1,predicate=vred:id_check]
