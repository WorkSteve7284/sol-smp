execute if items entity @s[predicate=!vred:double_crossbow,predicate=vred:sonic_crossbow_right,scores={crossbow=1..,sonic_cooldown=0}] weapon.mainhand *[minecraft:enchantments~[{enchantments:"minecraft:multishot"}]] run tag @s add sonic_multishot
execute if items entity @s[predicate=vred:double_crossbow,predicate=vred:sonic_crossbow_right,scores={crossbow=1..,sonic_cooldown=0}] weapon.mainhand *[minecraft:enchantments~[{enchantments:"minecraft:multishot"}]] run tag @s add sonic_multishot
execute if items entity @s[predicate=!vred:double_crossbow,predicate=vred:sonic_crossbow_left,scores={crossbow=1..,sonic_cooldown=0}] weapon.offhand *[minecraft:enchantments~[{enchantments:"minecraft:multishot"}]] run tag @s add sonic_multishot

execute as @s[predicate=!vred:double_crossbow,tag=sonic_multishot,scores={crossbow=1..,sonic_cooldown=0}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function vred:sonic_crossbowv2/multishot
execute as @s[predicate=!vred:double_crossbow,predicate=vred:sonic_crossbow,scores={crossbow=1..,sonic_cooldown=0}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function vred:sonic_crossbowv2/normal
execute as @s[predicate=!vred:double_crossbow,predicate=vred:sonic_crossbow,scores={crossbow=1..,sonic_cooldown=1..}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function vred:sonic_crossbowv2/sc2
execute as @s[predicate=vred:double_crossbow,tag=sonic_multishot,scores={crossbow=1..,sonic_cooldown=0}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function vred:sonic_crossbowv2/multishot
execute as @s[predicate=vred:double_crossbow,predicate=vred:sonic_crossbow_right,scores={crossbow=1..,sonic_cooldown=0}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function vred:sonic_crossbowv2/normal
execute as @s[predicate=vred:double_crossbow,predicate=vred:sonic_crossbow_right,scores={crossbow=1..,sonic_cooldown=1..}] at @s anchored eyes positioned ^ ^ ^ anchored feet run function vred:sonic_crossbowv2/sc2
execute if score @s sonic_cooldown matches 1.. run function vred:sonic_crossbowv2/cooldown
execute if score @s sonic_cooldown matches 1.. run function vred:sonic_crossbowv2/cooldown1
scoreboard players set @s[scores={crossbow=1..}] crossbow 0
tag @s remove sonic_multishot
