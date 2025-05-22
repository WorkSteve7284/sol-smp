scoreboard players reset @s ID
team leave @s
tag @s remove hypnosis_mob
execute on passengers run kill @s[type=marker,tag=hypnosis_mob1]
data merge entity @s {PersistenceRequired:0b}