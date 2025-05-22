particle minecraft:flame ^ ^ ^ 1 1 1 0.5 100
scoreboard players operation #temp ID = @s ID
tag @a[predicate=vred:id_check] add kill_aiglos
execute as @e[distance=..10,predicate=!vred:id_check,predicate=!vred:stuff,type=!player] at @s run data merge entity @s {Fire:100s}
execute as @a[distance=..10,tag=!kill_aiglos] at @s run summon minecraft:small_fireball ~ ~2.2 ~ {Motion:[0.0,-10.0,0.0]}
tag @a[tag=kill_aiglos] remove kill_aiglos