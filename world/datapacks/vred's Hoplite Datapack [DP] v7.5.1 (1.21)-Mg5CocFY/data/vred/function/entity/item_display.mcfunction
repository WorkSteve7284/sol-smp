execute as @s[type=item_display,tag=vred_projectile] at @s run function vred:projectile
execute as @s[type=item_display,tag=vred_int1-ride] at @s run function vred:interaction1/kill
execute as @s[type=item_display,tag=riptide_test1] at @s run tp @s ~ ~ ~ ~20 ~
execute as @s[type=item_display,tag=riptide_test2] at @s run tp @s ~ ~ ~ ~-40 ~
execute as @s[type=item_display,tag=pedestal_display] at @s run function vred:weapon_crafting/item