advancement revoke @s only vred:right_click/shadow_blade
execute if score @s shadow_timer matches 0 if score @s shadow_cooldown matches 0 store result storage vred:sonic_crossbow invis int 1 run attribute @s generic.armor get
execute if score @s shadow_timer matches 0 if score @s shadow_cooldown matches 0 run function vred:shadow_blade/activate with storage vred:sonic_crossbow
execute if entity @s[tag=no_cooldown] run function vred:shadow_blade/activate