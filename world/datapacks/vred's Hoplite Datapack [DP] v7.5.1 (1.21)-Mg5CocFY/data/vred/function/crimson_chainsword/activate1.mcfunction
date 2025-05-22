advancement revoke @s only vred:right_click/crimson_chainsword
execute if score @s[scores={pufferfish_help=0}] crimson_cooldown matches 0 run function vred:crimson_chainsword/activate
scoreboard players set @s pufferfish_help 10