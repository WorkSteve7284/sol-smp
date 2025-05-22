scoreboard players set @s[predicate=!vred:crimson_chainsword12_right] crimson_damage 0
execute if score @s crimson_cooldown matches 1.. run function vred:crimson_chainsword/cooldown
execute if score @s crimson_cooldown matches 1.. run function vred:crimson_chainsword/cooldown1