scoreboard players set #old_sonic.enabled item_check 1
tag @s add old_sonic.enabled
tellraw @s ["",{"text":"Old Sonic Crossbow Explosion: ","bold":true},{"text":"Enabled","color":"green"}]
scoreboard players set #damage sonic_crossbow_config 0
scoreboard players set #damage_range sonic_crossbow_config 0
scoreboard players set #explosion sonic_crossbow_config 4
scoreboard players set #sculk sonic_crossbow_config 4
