# $execute if score #explosion sonic_crossbow_config matches 1.. run summon creeper ~ ~0.5 ~ {Fuse:1,ExplosionRadius:$(explosion)b,ignited:1b,CustomName:'"a Sculk Explosion"',Invulnerable:1b}
# $execute if score #sculk sonic_crossbow_config matches 1.. run fill ~$(sculk) ~$(sculk) ~$(sculk) ~-$(sculk) ~-$(sculk) ~-$(sculk) minecraft:sculk replace #minecraft:sculk_replaceable
$data modify block ~ ~ ~ cursors append value {charge:$(sculk),pos:[I;$(x), $(y), $(z)], decay_delay:-1, update_delay:-1, facings:[]}
$execute if score #damage sonic_crossbow_config matches 1.. as @e[distance=..$(damage_range),predicate=!vred:stuff,tag=!sonic_arrow] at @s run damage @s $(damage) player_explosion by @a[tag=sonic_arrow,limit=1]
$execute if score #explosion sonic_crossbow_config matches 1.. as @e[distance=..$(damage_range),predicate=!vred:stuff] at @s run function vred:sonic_crossbowv2/explosionv2/explosion with storage vred:sonic_crossbow
particle explosion_emitter