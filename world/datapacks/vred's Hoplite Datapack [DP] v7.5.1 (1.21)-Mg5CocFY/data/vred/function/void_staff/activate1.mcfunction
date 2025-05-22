summon minecraft:shulker_bullet ^ ^ ^1 {Steps:10,Tags:["void_staffbullet"]}
scoreboard players operation @e[type=shulker_bullet,tag=void_staffbullet,limit=1,sort=nearest] ID = @s ID
scoreboard players set @s[tag=!no_cooldown] void_stafftimer1 30