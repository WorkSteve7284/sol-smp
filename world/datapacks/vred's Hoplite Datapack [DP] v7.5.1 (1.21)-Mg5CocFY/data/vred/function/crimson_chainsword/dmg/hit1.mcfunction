execute store result score #executioner reaper_damage run data get entity @s Health 100
execute store result score #executioner1 reaper_damage run attribute @s generic.max_health get
scoreboard players operation #executioner reaper_damage /= #executioner1 reaper_damage
scoreboard players set #executionerper reaper_damage 25
execute if score #executioner reaper_damage <= #executionerper reaper_damage run function vred:crimson_chainsword/dmg/dmg1 with storage vred:weapon_damage