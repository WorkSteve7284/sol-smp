return run execute on origin if score @s evoker_timer matches 1..
return run execute on owner if score @s evoker_timer matches 1..
scoreboard players operation #temp ID = @s ID
return run execute if score @a[predicate=vred:id_check,limit=1] evoker_timer matches 1..