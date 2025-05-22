scoreboard players operation #temp ID = @s ID
$execute as @e[predicate=!vred:id_check,predicate=!vred:stuff,distance=..5] at @s run damage @s $(armadillo_detonator) player_explosion by @a[limit=1,predicate=vred:id_check]

kill @s