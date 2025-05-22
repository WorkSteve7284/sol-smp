execute store result storage vred:teams id float 1 run scoreboard players get @s ID
execute as @s[tag=!hypnosis_staff1] if entity @e[distance=..2,tag=!hypnosis_staff,tag=!hypnosis_mob,type=!player,type=!marker,predicate=!vred:stuff,type=!#vred:passive] run function vred:hypnosis_staff/tame/add
scoreboard players operation #temp ID = @s ID
execute as @s[tag=!hypnosis_staff1] if entity @e[distance=..2,tag=!hypnosis_staff,predicate=vred:id_check,tag=hypnosis_mob,predicate=!vred:stuff,type=!#vred:passive,type=!marker,type=!player] run function vred:hypnosis_staff/tame/remove


scoreboard players set @s[tag=!no_cooldown] hypnosis_cooldown 100
scoreboard players set @s ray_success 1

tag @s remove hypnosis_staff1