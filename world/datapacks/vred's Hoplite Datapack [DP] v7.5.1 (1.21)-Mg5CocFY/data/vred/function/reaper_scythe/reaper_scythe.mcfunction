#execute as @s[predicate=vred:reaper_scythe,scores={reaper_s=1..,reaper_cooldown=1..}] at @s if entity @e[distance=..7,nbt={HurtTime:10s}] run tellraw @s [{"text":"\uE032 "},{"text":"You can't use Reaper Scythe now, ","color":"red"},{"score":{"name":"@s","objective":"reaper_cooldown1"},"color":"red"},{"text":"s left for cooldown","color":"red"}]
#execute as @s[predicate=vred:reaper_scythe,scores={reaper_s=1..,reaper_cooldown=0}] at @s if entity @e[distance=..7,nbt={HurtTime:10s}] run function vred:reaper_scythe/reaper_hit
#scoreboard players set @s reaper_s 0
execute if score @s reaper_cooldown matches 1.. run function vred:reaper_scythe/reaper_scythec
execute if score @s reaper_cooldown matches 1.. run function vred:reaper_scythe/reaper_scythec1