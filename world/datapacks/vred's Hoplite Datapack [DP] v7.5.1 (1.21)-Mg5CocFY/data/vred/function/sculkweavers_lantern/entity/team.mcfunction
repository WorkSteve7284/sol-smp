scoreboard players operation #temp ID = @s ID
execute if score @s rayAge matches 50.. run damage @s 0 player_attack by @e[predicate=!vred:stuff,distance=..15,predicate=!vred:id_check,limit=1,sort=nearest]
execute if score @s rayAge matches 50.. run scoreboard players set @s rayAge 0
scoreboard players add @s rayAge 1
scoreboard players add @s golem_timer 1
execute if score @s golem_timer matches 280.. run kill @s