data modify entity @s HasStung set value 0b
scoreboard players add @s bee_timer 1
scoreboard players operation #temp ID = @s ID
execute as @s[scores={bee_timer=5..}] at @s run data modify entity @s AngryAt set from entity @e[predicate=!vred:id_check,tag=!bee_bb,sort=nearest,limit=1,predicate=!vred:stuff] UUID
kill @s[scores={bee_timer=400..}]
