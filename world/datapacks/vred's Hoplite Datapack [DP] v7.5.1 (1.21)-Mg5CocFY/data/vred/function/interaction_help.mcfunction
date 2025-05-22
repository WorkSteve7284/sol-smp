execute as @s[tag=!int_spawned,predicate=vred:vred_interactions] at @s anchored eyes run function vred:interaction1/spawn
# Shift + Right Click
#execute as @s[scores={mjolnir_shift=1..}] at @s if entity @s[predicate=vred:cloud_sword] unless entity @e[type=interaction,tag=cloud_inter,distance=..3,sort=nearest,limit=1,predicate=vred:id_check] run summon interaction ~ ~ ~ {width:3,height:3,response:1b,Tags:["cloud_inter","vred_interaction","shift_right_clickinter"]}
#execute as @s[scores={mjolnir_shift=1..}] at @s if entity @s[predicate=vred:mjolnir] unless entity @e[type=interaction,tag=mjolnir_inter,distance=..3,sort=nearest,limit=1,predicate=vred:id_check] run summon interaction ~ ~ ~ {width:3,height:3,response:1b,Tags:["mjolnir_inter","vred_interaction","shift_right_clickinter"]}
#execute as @s[scores={mjolnir_shift=1..}] at @s if entity @s[predicate=vred:wither_sickles] unless entity @e[type=interaction,tag=sickles_inter,distance=..3,sort=nearest,limit=1,predicate=vred:id_check] run summon interaction ~ ~ ~ {width:3,height:3,response:1b,Tags:["sickles_inter","vred_interaction","shift_right_clickinter"]}
#execute as @s[scores={mjolnir_shift=1..}] at @s if entity @s[predicate=vred:kamutoke] unless entity @e[type=interaction,tag=kamutoke_inter,distance=..3,sort=nearest,limit=1,predicate=vred:id_check] run summon interaction ~ ~ ~ {width:3,height:3,response:1b,Tags:["kamutoke_inter","vred_interaction","shift_right_clickinter"]}
#execute as @s[scores={mjolnir_shift=1..}] at @s if entity @s[predicate=vred:hiten] unless entity @e[type=interaction,tag=hiten_inter,distance=..3,sort=nearest,limit=1,predicate=vred:id_check] run summon interaction ~ ~ ~ {width:3,height:3,response:1b,Tags:["hiten_inter","vred_interaction","shift_right_clickinter"]}



# Shift + Left Click
##execute as @s[scores={mjolnir_shift=1..}] at @s if entity @s[predicate=vred:ender_bow12] unless entity @e[type=interaction,tag=ender_inter1,distance=..3,sort=nearest,limit=1,predicate=vred:id_check] run summon interaction ~ ~ ~ {width:3,height:3,response:1b,Tags:["ender_inter1","vred_interaction","shift_left_clickinter"]}
##execute as @s[scores={mjolnir_shift=1..}] at @s if entity @s[predicate=vred:void_staff] unless entity @e[type=interaction,tag=vs_inter,distance=..3,sort=nearest,limit=1,predicate=vred:id_check] run summon interaction ~ ~ ~ {width:3,height:3,response:1b,Tags:["vs_inter","vred_interaction","shift_left_clickinter"]}
##execute as @s[scores={mjolnir_shift=1..}] at @s if entity @s[predicate=vred:shrink_ray] unless entity @e[type=interaction,tag=shrink_inter,distance=..3,sort=nearest,limit=1,predicate=vred:id_check] run summon interaction ~ ~ ~ {width:3,height:3,response:1b,Tags:["shrink_inter","vred_interaction","shift_left_clickinter"]}

# Right CLick
#execute if entity @s[predicate=vred:pufferfish_cannon] unless entity @e[type=interaction,tag=pc_inter,distance=..3,sort=nearest,limit=1,predicate=vred:id_check] run summon interaction ~ ~ ~ {width:3,height:3,response:1b,Tags:["pc_inter","vred_interaction","right_clickinter"]}
#execute if entity @s[predicate=vred:customhats] unless entity @e[type=interaction,tag=customhats,distance=..3,sort=nearest,limit=1,predicate=vred:id_check] run summon interaction ~ ~ ~ {width:3,height:3,response:1b,Tags:["customhats","vred_interaction","right_clickinter"]}


# Special case
#execute if entity @s[predicate=vred:void_staff] unless entity @e[type=interaction,tag=vs_inter,distance=..3,sort=nearest,limit=1,predicate=vred:id_check] run summon interaction ~ ~ ~ {width:3,height:3,response:1b,Tags:["vs_inter","vred_interaction","shift_right_clickinter","right_clickinter","shift_left_clickinter"]}

# Real
scoreboard players operation #temp ID = @s ID
execute as @s at @s anchored eyes positioned ^ ^-0.35 ^2 run tp @e[tag=vred_int1-tagged,type=item_display,tag=vred_int1-ride,sort=nearest,limit=1,predicate=vred:id_check] ^ ^ ^
execute as @s[predicate=!vred:vred_interactions] at @s run tag @e[tag=vred_int1-tagged,type=item_display,tag=vred_int1-ride,sort=nearest,limit=1,predicate=vred:id_check] add kill_int
execute as @s[predicate=!vred:vred_interactions] at @s run tag @s remove int_spawned