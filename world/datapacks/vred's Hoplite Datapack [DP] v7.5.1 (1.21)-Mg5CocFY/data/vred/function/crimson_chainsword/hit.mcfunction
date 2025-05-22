tag @s add crimson_hit
execute as @e[distance=..7,nbt={HurtTime:10s}] at @s run function vred:crimson_chainsword/dmg/hit1
function vred:crimson_chainsword/dmg/dmg
execute if predicate vred:crimson_chainsword2_right run execute as @e[distance=..7,nbt={HurtTime:10s}] at @s unless score @s crimson_timer matches 1.. run scoreboard players set @s crimson_timer 50
advancement revoke @s only vred:crimson_chainsword1_2
advancement revoke @s only vred:crimson_chainsword1_1
execute if predicate vred:crimson_chainsword2_right run scoreboard players set @s[tag=!no_cooldown] crimson_cooldown 260
execute if predicate vred:crimson_chainsword2_right run item modify entity @s weapon.mainhand vred:crimson_chainsword1
tag @s remove crimson_hit