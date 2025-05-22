execute unless entity @s[tag=jolly_dome] align xyz positioned ~-14.5 ~-14.5 ~-14.5 run function vred:sculkweavers_lantern/dome1/main1
execute if entity @s[tag=jolly_dome] align xyz positioned ~-14.5 ~-14.5 ~-14.5 run function vred:sculkweavers_lantern/jolly_dome/main1
execute if score #skins_vfx.enabled item_check matches 1.. if entity @s[tag=jolly_dome,scores={rayAge=37..}] align xyz run particle snowflake ~ ~ ~ 5 -10 5 0.1 50 force
execute if score @s rayAge matches 38 positioned ~-1 ~8 ~-1 run function vred:sculkweavers_lantern/entity/start
scoreboard players operation #temp ID = @s ID
execute if score @s rayAge matches 338.. run scoreboard players set @a[predicate=vred:id_check,tag=!no_cooldown] sculweaver_cooldown 600