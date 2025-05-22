advancement revoke @s only vred:attack/wither_sickles
execute if score #purge_sickles.enabled item_check matches 1.. if score @s wither_sickles_hit matches 1.. if score @s wither_sickles_attack matches 1.. if score @s wither_sickles_cooldown matches 0 run function vred:wither_sickles/custom/custom
execute if score #purge_sickles.enabled item_check matches 0 run effect give @e[distance=..7,nbt={HurtTime:10s}] wither 3 1
scoreboard players set @s wither_sickles_hit 0
scoreboard players set @s wither_sickles_attack 15