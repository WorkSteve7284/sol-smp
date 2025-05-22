execute as @s[predicate=vred:has_passenger] at @s run function vred:ravager_horn/control
execute as @s[tag=!id.added] run function vred:ravager_horn/spawn/b
execute on passengers as @s[tag=!interaction_rider,type=interaction] run function vred:ravager_horn/spawn/d