execute as @s[predicate=vred:ender_bow12,scores={mjolnir_shift=1..}] at @s run function vred:ender_bow/switch/switch-12
execute as @s[predicate=vred:void_staff,scores={mjolnir_shift=1..}] at @s run function vred:void_staff/switch-12
execute as @s[predicate=vred:shrink_ray,scores={shrink_cooldown=0,mjolnir_shift=1..}] at @s run function vred:shrink_ray/shrink
execute as @s[predicate=vred:armadillo_detonator_right,scores={armadexpl_cooldown=0,mjolnir_shift=1..}] at @s run function vred:armadillo_detonator/detonation
execute as @s[predicate=vred:evoker_wand,scores={evoker_cooldown=..0,evoker_timer=..0}] at @s run function vred:evoker_wand/raycast/use