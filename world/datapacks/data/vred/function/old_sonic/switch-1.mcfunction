scoreboard players set #old_sonic.enabled item_check 0
tag @s add old_sonic.enabled
tellraw @s ["",{"text":"Old Sonic Crossbow Explosion: ","bold":true},{"text":"Disabled","color":"red"}]
scoreboard players reset #damage sonic_crossbow_config
scoreboard players reset #damage_range sonic_crossbow_config
scoreboard players reset #explosion sonic_crossbow_config
scoreboard players reset #sculk sonic_crossbow_config