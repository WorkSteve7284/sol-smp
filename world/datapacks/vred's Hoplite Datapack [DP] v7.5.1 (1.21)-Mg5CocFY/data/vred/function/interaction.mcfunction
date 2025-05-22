
#execute if entity @s[tag=shift_right_clickinter] run say a
#execute if entity @s[tag=shift_left_clickinter] run say a
#execute if entity @s[tag=right_clickinter] run say a
##scoreboard players operation #temp ID = @s ID
#execute as @s[type=minecraft:interaction,tag=cloud_inter] at @s on target if entity @s[predicate=vred:cloud_sword,scores={cloud_cooldown=0},predicate=vred:id_check] at @s anchored eyes run function vred:cloud_sword/activate
#execute as @s[type=minecraft:interaction,tag=mjolnir_inter] at @s on target if entity @s[predicate=vred:mjolnir,scores={mjolnir_cooldown=0},predicate=vred:id_check] at @s anchored eyes run function vred:mjolnir/mjolnir1
##execute as @s[type=minecraft:interaction,tag=ender_inter1] at @s on attacker if entity @a[predicate=vred:ender_bow12,predicate=vred:id_check,scores={mjolnir_shift=1..}] at @s run function vred:ender_bow/switch-12
#execute as @s[type=minecraft:interaction,tag=pc_inter] at @s on target if entity @s[predicate=vred:pufferfish_cannon,scores={pufferfish_cooldown=0},predicate=vred:id_check] at @s anchored eyes run function vred:pufferfish_cannon/throw
#execute as @s[type=minecraft:interaction,tag=sickles_inter] at @s on target if entity @s[predicate=vred:wither_sickles,scores={wither_sickles_cooldown=0},predicate=vred:id_check] at @s anchored eyes run function vred:wither_sickles/throw
#execute as @s[type=minecraft:interaction,tag=vs_inter] at @s on target if entity @s[predicate=vred:void_staff1,predicate=vred:id_check,scores={void_stafftimer1=0}] at @s anchored eyes run function vred:void_staff/activate
#execute as @s[type=minecraft:interaction,tag=vs_inter] at @s on target if entity @s[predicate=vred:void_staff2,predicate=vred:id_check,scores={void_cooldown=..0}] at @s anchored eyes run function vred:void_staff/activate1
##execute as @s[type=minecraft:interaction,tag=vs_inter] at @s on attacker if entity @a[predicate=vred:void_staff,scores={mjolnir_shift=1..},predicate=vred:id_check] at @s run function vred:void_staff/switch-12
#execute as @s[type=minecraft:interaction,tag=kamutoke_inter] at @s on target if entity @s[predicate=vred:kamutoke,scores={kamutoke_cooldown=0},predicate=vred:id_check] at @s anchored eyes run function vred:kamutoke/thunder
#execute as @s[type=minecraft:interaction,tag=hiten_inter] at @s on target if entity @s[predicate=vred:hiten,scores={hiten_cooldown=0},predicate=vred:id_check] at @s anchored eyes run function vred:hiten/throw
##execute as @s[type=minecraft:interaction,tag=shrink_inter] at @s on attacker if entity @a[predicate=vred:shrink_ray,predicate=vred:id_check,scores={shrink_cooldown=0,mjolnir_shift=1..}] at @s run function vred:shrink_ray/shrink

execute on attacker run function vred:left_click_
execute on target run function vred:right_click_
execute as @s[nbt={interaction:{}}] run data remove entity @s interaction
execute as @s[nbt={attack:{}}] run data remove entity @s attack