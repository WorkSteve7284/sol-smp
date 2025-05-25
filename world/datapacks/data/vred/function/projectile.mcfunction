execute as @s[scores={rayAge=1..},tag=!return,tag=!poseidon_return,tag=!hiten_return,tag=!harpoon_tp1] at @s if block ^ ^ ^0.3 #vred:non_solid run tp ^ ^ ^0.3
execute as @s[scores={rayAge=1..},tag=!return,tag=!poseidon_return,tag=!hiten_return,tag=!harpoon_tp1] at @s if block ^ ^ ^0.3 #vred:non_solid run tp ^ ^ ^0.3
execute as @s[scores={rayAge=1..},tag=!return,tag=!poseidon_return,tag=!hiten_return,tag=!harpoon_tp1] at @s if block ^ ^ ^0.3 #vred:non_solid run tp ^ ^ ^0.3
execute as @s[scores={rayAge=1..},tag=return] at @s run tp ^ ^ ^0.4
execute as @s[scores={rayAge=1..},tag=return] at @s run tp ^ ^ ^0.4
execute as @s[scores={rayAge=1..},tag=return] at @s run tp ^ ^ ^0.4
execute as @s[scores={rayAge=1..},tag=poseidon_return] at @s run tp ^ ^ ^0.4
execute as @s[scores={rayAge=1..},tag=poseidon_return] at @s run tp ^ ^ ^0.4
execute as @s[scores={rayAge=1..},tag=poseidon_return] at @s run tp ^ ^ ^0.4
execute as @s[scores={rayAge=1..},tag=hiten_return] at @s run tp ^ ^ ^0.4
execute as @s[scores={rayAge=1..},tag=hiten_return] at @s run tp ^ ^ ^0.4
execute as @s[scores={rayAge=1..},tag=hiten_return] at @s run tp ^ ^ ^0.4
execute as @s[tag=!harpoon_tp1,tag=!poseidon_return,tag=!return] at @s unless entity @e[distance=..2,predicate=!vred:id_check,predicate=!vred:stuff] run tp ^ ^ ^0.35
execute as @s[tag=!harpoon_tp1,tag=!poseidon_return,tag=!return] at @s unless entity @e[distance=..2,predicate=!vred:id_check,predicate=!vred:stuff] run tp ^ ^ ^0.35
execute as @s[tag=!harpoon_tp1,tag=!poseidon_return,tag=!return] at @s unless entity @e[distance=..2,predicate=!vred:id_check,predicate=!vred:stuff] run tp ^ ^ ^0.35
scoreboard players add @s rayAge 1
kill @s[scores={rayAge=300..},tag=!mjolnir_trident,tag=!aiglos_trident,tag=!poseidon_return,tag=!hiten_trident]

execute as @s[scores={rayAge=1..},tag=aiglos_trident] at @s run function vred:projectile/aiglos
execute as @s[scores={rayAge=1..},tag=iceball] at @s run function vred:projectile/iceball
execute as @s[scores={rayAge=1..},tag=iceshard] at @s run function vred:projectile/iceshard
execute as @s[scores={rayAge=1..},tag=harpoon_hook] at @s run function vred:projectile/grappling_hook
execute as @s[tag=mjolnir_trident,scores={rayAge=1..}] at @s run function vred:projectile/mjolnir_trident
execute as @s[tag=poseidon_trident,scores={rayAge=1..}] at @s run function vred:projectile/poseidon_trident
execute as @s[tag=wither_sickles,scores={rayAge=1..}] at @s run function vred:projectile/wither_sickles
execute as @s[tag=hiten_trident,scores={rayAge=1..}] at @s run function vred:projectile/hiten

