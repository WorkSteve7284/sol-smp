scoreboard players operation #temp ID = @s ID
#$execute if score #explosion lich_staff_config matches 1.. run summon creeper ~ ~0.5 ~ {Fuse:1,ExplosionRadius:$(explosion)b,ignited:1b,CustomName:'"Lich Staff Explosion"',Invulnerable:1b}
$execute if score #ice lich_staff_config matches 1.. run fill ~$(ice) ~$(ice) ~$(ice) ~-$(ice) ~-$(ice) ~-$(ice) minecraft:ice replace #minecraft:sculk_replaceable
$execute as @e[distance=..$(damage_range),predicate=!vred:stuff] at @s run function vred:lich_staffv2/explosion
$execute as @e[distance=..$(damage_range),predicate=!vred:stuff,tag=!iceball,predicate=!vred:id_check] at @s run damage @s $(damage) player_explosion by @a[tag=iceball_atk,limit=1]
