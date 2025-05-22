scoreboard players add @s hypnosis_active 1
execute if score @s hypnosis_active matches ..10 run execute as @e[distance=..2,tag=!hypnosis_staff,tag=!hypnosis_mob,limit=1,predicate=!vred:stuff,type=!#vred:passive,type=!marker,type=!player] at @s run function vred:hypnosis_staff/tame/start with storage vred:teams
execute if score @s hypnosis_active matches 10.. run tellraw @s [{"text":"\uE032 "},{"text":"You have reached the limit of 10 mobs.","color":"red"},{"text":"","color":"red"}]
tag @s add hypnosis_staff1
