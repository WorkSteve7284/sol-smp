tag @s add this
execute on passengers as @s[type=player] run data modify entity @e[type=ravager,tag=this,limit=1] Rotation set from entity @s Rotation
execute on passengers as @s[type=player] rotated as @s rotated ~ 0 positioned .0 .0 .0 positioned ^ ^ ^0.5 summon area_effect_cloud run data modify entity @e[type=ravager,nbt={OnGround:true},tag=this,limit=1] Motion set from entity @s Pos
tag @s remove this