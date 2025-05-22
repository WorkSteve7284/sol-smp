advancement revoke @s only vred:attack/hypnosis_staff
scoreboard players operation #temp ID = @s ID
execute as @e[distance=..7,nbt={HurtTime:10s},predicate=!vred:id_check] at @s run tag @s add hypnosis_hit
execute as @e[predicate=vred:id_check,tag=hypnosis_mob] at @s run data modify entity @s AngryAt set from entity @e[tag=hypnosis_hit,limit=1] UUID
execute as @e[predicate=vred:id_check,tag=hypnosis_mob] at @s run damage @s 0 vred:bleed_out by @e[tag=hypnosis_hit,limit=1]
tag @e[tag=hypnosis_hit] remove hypnosis_hit

