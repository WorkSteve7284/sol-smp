$scoreboard players set @s ID $(id)
$team join $(id).internal_team @s
data merge entity @s {PersistenceRequired:1b}
tag @s add hypnosis_mob
summon marker ~ ~ ~ {Tags:["hypnosis_mob1"]}
ride @e[tag=hypnosis_mob1,type=marker,limit=1,tag=!rider.added] mount @s
execute on passengers run tag @s[type=marker,tag=hypnosis_mob1] add rider.added
scoreboard players operation #cool1 ID = @s ID
execute on passengers as @s[tag=hypnosis_mob1,type=marker] run scoreboard players operation @s ID = #cool1 ID
