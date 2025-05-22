scoreboard players set #multiplier aiglos_power 2
scoreboard players operation @s aiglos_power *= #multiplier aiglos_power
scoreboard players add @s aiglos_power 10
execute store result storage vred:damage damage float 1 run scoreboard players get @s aiglos_power
function vred:reaper_scythe/power with storage vred:damage