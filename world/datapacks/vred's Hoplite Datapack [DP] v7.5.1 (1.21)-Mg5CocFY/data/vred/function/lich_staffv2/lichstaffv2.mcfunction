execute if score @s lich_cooldown matches 1.. run function vred:lich_staffv2/lich_staffc
execute if score @s lich_cooldown matches 1.. run function vred:lich_staffv2/lich_staffc1
execute as @s[predicate=vred:lich_staff,scores={cloud_help=..0,staff_use=1..,lich_cooldown=..0}] at @s anchored eyes run function vred:lich_staffv2/lich_staff1
execute as @s[predicate=vred:lich_staff,scores={cloud_help=..0,staff_use=1..,lich_cooldown=1..}] at @s run tellraw @s ["",{"text":"You can't use Lich Staff now, ","color":"red"},{"score":{"name":"@s","objective":"lich_cooldown1"},"color":"red"},{"text":"s left for cooldown.","color":"red"}]
execute as @s[predicate=vred:lich_staff] at @s run particle snowflake ~ ~1 ~ 0.1 0.1 0.1 0 1
scoreboard players set @s staff_use 0

title @s[predicate=vred:lich_staff,scores={lich_charges=4..}] actionbar [{"color": "white","text":"\uE033"},"",{"color": "white","text":"\uE033"},"",{"color": "white","text":"\uE033"},"",{"color": "white","text":"\uE033"}]
title @s[predicate=vred:lich_staff,scores={lich_charges=3}] actionbar [{"color": "white","text":"\uE033"},"",{"color": "white","text":"\uE033"},"",{"color": "white","text":"\uE033"},"",{"color": "white","text":"\uE034"}]
title @s[predicate=vred:lich_staff,scores={lich_charges=2}] actionbar [{"color": "white","text":"\uE033"},"",{"color": "white","text":"\uE033"},"",{"color": "white","text":"\uE034"},"",{"color": "white","text":"\uE034"}]
title @s[predicate=vred:lich_staff,scores={lich_charges=1}] actionbar [{"color": "white","text":"\uE033"},"",{"color": "white","text":"\uE034"},"",{"color": "white","text":"\uE034"},"",{"color": "white","text":"\uE034"}]
execute if score @s lich_charges matches ..0 if score @s lich_cooldown matches 0 run scoreboard players set @s[tag=!no_cooldown] lich_cooldown 400
execute if score @s lich_charges matches ..0 if score @s lich_cooldown matches 0 run scoreboard players set @s[tag=no_cooldown] lich_charges 4
execute as @s[scores={lich_cooldown=1}] at @s run scoreboard players set @s lich_charges 4