execute as @s[predicate=vred:thunder1] at @s run summon lightning_bolt
tag @s add poseidon_return
tp @s ^ ^0.25 ^
scoreboard players operation #temp ID = @s ID
$execute as @e[distance=..2,predicate=!vred:id_check,predicate=!vred:stuff] at @s run damage @s $(poseidon_trident) trident by @a[predicate=vred:id_check,limit=1]
playsound minecraft:item.trident.return player @a[distance=..40] ~ ~ ~ 3