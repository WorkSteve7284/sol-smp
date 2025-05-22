execute store result score @s reaper_damage run attribute @s generic.max_health get 1
scoreboard players operation @s reaper_damage /= #reaper_scythe hoplite_weapondmg
execute store result storage vred:damage damage1 float 1 run scoreboard players get @s reaper_damage
function vred:reaper_scythe/power with storage vred:damage