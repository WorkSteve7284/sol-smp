playsound minecraft:item.trident.hit player @a[distance=..40] ~ ~ ~ 5
$execute as @e[distance=..4,predicate=!vred:wither_sickles,predicate=!vred:stuff] at @s run damage @s $(wither_sickles) player_attack by @a[predicate=vred:wither_sickles,limit=1]
effect give @e[distance=..7,predicate=!vred:wither_sickles] wither 3 1
particle block{block_state:{Name:netherite_block}} ~ ~ ~ 0.2 0.2 0.2 0 12
kill @s