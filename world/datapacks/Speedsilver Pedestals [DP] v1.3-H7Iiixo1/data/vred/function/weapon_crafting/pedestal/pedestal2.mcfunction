scoreboard players operation #temp ID = @s ID
execute as @a[predicate=vred:id_check] run function vred:give/pedestal1
#execute as @a[predicate=vred:id_check] run say a
scoreboard players operation #temp pedestal_ID = @s pedestal_ID
kill @e[predicate=vred:id_check1,distance=..5]