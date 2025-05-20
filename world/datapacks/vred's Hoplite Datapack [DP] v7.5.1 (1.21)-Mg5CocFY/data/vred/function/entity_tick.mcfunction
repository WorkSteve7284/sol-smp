execute as @s[type=player] at @s run function vred:player
execute as @s[type=interaction] at @s run function vred:entity/interaction
execute as @s[type=item_display] at @s run function vred:entity/item_display
execute as @s[type=marker] at @s run function vred:entity/marker
execute as @s[type=arrow] at @s run function vred:entity/arrow
execute as @s[type=armor_stand] at @s run function vred:entity/armor_stand

execute as @s[predicate=!vred:stuff] at @s if score @s crimson_timer matches 1.. run function vred:crimson_chainsword/dmg
execute as @s[tag=motion_ad,type=armadillo] at @s run function vred:armadillo_detonator/armadillo_tick
execute as @s[tag=motion_pf,type=pufferfish] at @s run function vred:pufferfish_cannon/tick
execute as @s[type=fishing_bobber] if function vred:sculkweavers_lantern/dome1/kill at @s run kill @s 
execute as @s[type=ravager,tag=ravager_horn] at @s run function vred:ravager_horn/entity
execute as @s[tag=sculk_prison] at @s run function vred:sculkweavers_lantern/entity/team
execute as @s[type=shulker_bullet,tag=void_staffbullet] at @s run function vred:void_staff/shulker/tick
execute as @s[type=!player,predicate=!vred:stuff1] at @s run function vred:evoker_wand/shield/atk
execute as @s[type=!player,scores={enlarge_timer=1..},predicate=!vred:stuff1] at @s run function vred:shrink_ray/large_entity
execute as @s[type=bee,tag=bee_bb] at @s run function vred:beehive_blaster/bee
effect give @s[type=bat,tag=harpoon_manager] invisibility infinite 1 true
execute as @s[tag=wither_sickles_vfx,type=text_display] run function vred:wither_sickles/custom/vfx
execute as @s[tag=hypnosis_mob1,type=marker] at @s run function vred:hypnosis_staff/tick1