execute if score @s[predicate=vred:sculkweavers_lantern,tag=!lantern_spawned] fish matches 1.. if score @s sculweaver_cooldown matches 0 run function vred:sculkweavers_lantern/throw
scoreboard players set @s fish 0
execute if score @s sculweaver_cooldown matches 1.. run function vred:sculkweavers_lantern/cooldown
execute if score @s sculweaver_cooldown matches 1.. run function vred:sculkweavers_lantern/cooldown1
tag @s[tag=no_cooldown] remove lantern_spawned