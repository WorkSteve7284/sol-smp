advancement revoke @s only vred:attack/mjolnir
effect give @e[predicate=vred:stuff,distance=..7] resistance 2 255
effect give @s resistance 1 5 true
execute at @e[distance=..7,nbt={HurtTime:10s}] run summon lightning_bolt
