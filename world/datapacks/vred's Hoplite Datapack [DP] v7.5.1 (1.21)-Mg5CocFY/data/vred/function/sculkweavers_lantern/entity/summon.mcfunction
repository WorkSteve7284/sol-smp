tag @s add sculk_prison
execute as @s[type=warden] at @s run function vred:sculkweavers_lantern/entity/warden
execute as @s[type=enderman] at @s run function vred:sculkweavers_lantern/entity/enderman
execute as @s[type=endermite] at @s run function vred:sculkweavers_lantern/entity/endermite
$team join $(id).internal_team @s
$scoreboard players set @s ID $(id)
data merge entity @s {DeathLootTable:"minecraft:empty"}
execute store result storage vred:teams id float 1 run scoreboard players get @s ID 
execute store result score #decimal_x pos run random value 0..99 vred:random_pos
execute store result score #decimal_y pos run random value 0..99 vred:random_pos
execute store result score #decimal_z pos run random value 0..99 vred:random_pos
execute store result storage vred:random_pos decimal_x float 1 run scoreboard players get #decimal_x pos
execute store result storage vred:random_pos decimal_y float 1 run scoreboard players get #decimal_y pos
execute store result storage vred:random_pos decimal_z float 1 run scoreboard players get #decimal_z pos
execute store result storage vred:random_pos int_x float 1 run random value -9..10 vred:random_pos1
execute store result storage vred:random_pos int_y float 1 run random value 0..1 vred:random_pos1
execute store result storage vred:random_pos int_z float 1 run random value -9..10 vred:random_pos1
function vred:sculkweavers_lantern/entity/random_tp with storage vred:random_pos