#summon bat ~ ~ ~ {Leash:{UUID:1L},Tags:["harpoon_manager","harpoon_tp1"],NoAI:1b,Invulnerable:1b,Silent:1b}
#scoreboard players operation @e[type=minecraft:bat,limit=1,sort=nearest,tag=harpoon_manager,distance=..2] ID = @s ID
#data modify entity @e[type=minecraft:bat,limit=1,sort=nearest,tag=harpoon_manager,distance=..2] leash.UUID set from entity @s UUID
tag @s add harpoon_tp
scoreboard players set @s[tag=!no_cooldown] harpoon_cooldown 240