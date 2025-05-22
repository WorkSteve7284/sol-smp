execute store result storage vred:teams id float 1 run scoreboard players get @s ID 
scoreboard players operation #temp ID = @s ID
effect give @a[predicate=vred:id_check] night_vision 15 1 true
effect give @e[predicate=!vred:id_check,distance=..15] darkness 15 1 true
execute summon warden run function vred:sculkweavers_lantern/entity/summon with storage vred:teams
execute summon enderman run function vred:sculkweavers_lantern/entity/summon with storage vred:teams
execute summon enderman run function vred:sculkweavers_lantern/entity/summon with storage vred:teams
execute summon warden run function vred:sculkweavers_lantern/entity/summon with storage vred:teams
execute summon endermite run function vred:sculkweavers_lantern/entity/summon with storage vred:teams
execute summon endermite run function vred:sculkweavers_lantern/entity/summon with storage vred:teams
execute summon warden run function vred:sculkweavers_lantern/entity/summon with storage vred:teams
execute summon enderman run function vred:sculkweavers_lantern/entity/summon with storage vred:teams
execute summon enderman run function vred:sculkweavers_lantern/entity/summon with storage vred:teams
execute summon warden run function vred:sculkweavers_lantern/entity/summon with storage vred:teams
execute summon endermite run function vred:sculkweavers_lantern/entity/summon with storage vred:teams
execute summon endermite run function vred:sculkweavers_lantern/entity/summon with storage vred:teams
