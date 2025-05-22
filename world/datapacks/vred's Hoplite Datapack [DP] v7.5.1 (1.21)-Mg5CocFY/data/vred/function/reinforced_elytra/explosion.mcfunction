tag @s add reinforced_eexplosion
effect give @s resistance 1 255 true
scoreboard players set @s reinforcede_tick 0
$execute as @e[distance=..10,predicate=!vred:stuff] at @s run damage @s $(reinforced_elytra) vred:elytra_kinetic by @a[tag=reinforced_eexplosion,limit=1,sort=nearest]
particle end_rod ~ ~ ~ 0 0 0 0.3 100
playsound entity.generic.explode player @a[distance=..15] ~ ~ ~
tag @s remove reinforced_eexplosion