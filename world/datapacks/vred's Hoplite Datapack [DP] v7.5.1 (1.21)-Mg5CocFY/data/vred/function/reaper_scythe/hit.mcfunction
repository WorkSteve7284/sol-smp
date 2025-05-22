execute if score @s reaper_cooldown matches 1.. run tellraw @s [{"text":"\uE032 "},{"text":"You can't use Reaper Scythe now, ","color":"red"},{"score":{"name":"@s","objective":"reaper_cooldown1"},"color":"red"},{"text":"s left for cooldown","color":"red"}]
execute if score @s reaper_cooldown matches 0 run function vred:reaper_scythe/reaper_hit
advancement revoke @s only vred:attack/reaper_scythe