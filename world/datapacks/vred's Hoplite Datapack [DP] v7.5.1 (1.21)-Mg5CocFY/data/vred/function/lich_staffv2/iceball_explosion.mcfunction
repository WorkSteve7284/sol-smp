particle explosion_emitter
scoreboard players operation #temp ID = @s ID
tag @a[predicate=vred:id_check,limit=1] add iceball_atk
#$execute as @e[distance=..5,predicate=!vred:id_check,predicate=!vred:stuff] at @s run damage @s $(lich_staff) player_explosion by @a[predicate=vred:id_check,limit=1]
playsound minecraft:entity.generic.explode hostile @a[distance=..30] ~ ~ ~ 5 1.5 1
playsound minecraft:block.glass.break hostile @a[distance=..30] ~ ~ ~ 5 1.5 1
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:ice"},Radius:4f,Duration:20,potion_contents:{potion:"minecraft:strong_slowness",custom_effects:[{id:"minecraft:slowness",amplifier:3,duration:80,show_particles:1b}]}}
execute store result storage vred:weapon_damage lich_staff float 1 run scoreboard players get #lich_staff hoplite_weapondmg
data modify storage vred:lich_staff damage set from storage vred:weapon_damage lich_staff
execute store result storage vred:lich_staff ice float 1 run scoreboard players get #ice lich_staff_config
execute store result storage vred:lich_staff damage_range float 1 run scoreboard players get #damage_range lich_staff_config
function vred:lich_staffv2/explosion/explosion with storage vred:lich_staff
tag @a[predicate=vred:id_check,limit=1,tag=iceball_atk] remove iceball_atk 
kill @s
#summon area_effect_cloud ~ ~ ~ {Particle:"block ice",Radius:4f,Duration:20,Potion:"minecraft:strong_slowness",effects:[{id:"minecraft:slowness",amplifier:3b,duration:80,show_particles:1b}]}