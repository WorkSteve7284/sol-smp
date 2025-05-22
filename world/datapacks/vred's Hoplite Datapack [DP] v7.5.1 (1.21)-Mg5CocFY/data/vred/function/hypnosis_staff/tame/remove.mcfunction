scoreboard players remove @s hypnosis_active 1
scoreboard players operation #temp ID = @s ID
execute as @e[distance=..2,tag=!hypnosis_staff,predicate=vred:id_check,tag=hypnosis_mob,limit=1,predicate=!vred:stuff,type=!#vred:passive,type=!marker,type=!player] at @s run function vred:hypnosis_staff/tame/leave with storage vred:teams
tag @s add hypnosis_staff1