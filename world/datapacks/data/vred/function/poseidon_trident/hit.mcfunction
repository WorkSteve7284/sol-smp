tag @s add storm_pos
execute at @e[distance=..7,nbt={HurtTime:10s},tag=!storm_pos] run summon lightning_bolt
tag @s remove storm_pos