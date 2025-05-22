particle explosion_emitter
execute as @e[distance=..10,tag=!lich_staff] at @s run damage @s 10 player_explosion by @a[tag=lich_staff,limit=1]
execute as @e[distance=10..20,tag=!lich_staff] at @s run damage @s 5 player_explosion by @a[tag=lich_staff,limit=1]
playsound minecraft:entity.generic.explode hostile @a[distance=..30] ~ ~ ~ 5 1.5 1
playsound minecraft:block.glass.break hostile @a[distance=..30] ~ ~ ~ 5 1.5 1
summon area_effect_cloud ~ ~ ~ {Particle:"block ice",Radius:4f,Duration:20,Potion:"minecraft:strong_slowness",effects:[{id:"minecraft:slowness",amplifier:3b,duration:80,show_particles:1b}]}
summon area_effect_cloud ~ ~ ~ {Particle:"block ice",Radius:4f,Duration:20,Potion:"minecraft:strong_slowness",effects:[{id:"minecraft:slowness",amplifier:3b,duration:80,show_particles:1b}]}
