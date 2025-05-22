scoreboard players add @s wither_sickles_attack 1
execute as @s[tag=wither_sickles_vfx,scores={wither_sickles_attack=10..14}] at @s run data merge entity @s {text_opacity:192}
execute as @s[tag=wither_sickles_vfx,scores={wither_sickles_attack=14..16}] at @s run data merge entity @s {text_opacity:128}
execute as @s[tag=wither_sickles_vfx,scores={wither_sickles_attack=16..18}] at @s run data merge entity @s {text_opacity:64}
execute as @s[type=minecraft:text_display,tag=wither_sickles_vfx,scores={wither_sickles_attack=18..}] at @s run kill @s