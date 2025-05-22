scoreboard players set @s ray_success 1
playsound minecraft:block.end_portal.spawn ambient @s
summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:["void_staffportal2"]}
tp @e[type=armor_stand,tag=void_staffportal2,limit=1,sort=nearest] ^ ^ ^ ~ ~
scoreboard players operation @e[type=armor_stand,tag=void_staffportal2,limit=1,sort=nearest] ID = @s ID
scoreboard players set @s[tag=!no_cooldown] void_cooldown 600
scoreboard players set @s void_stafftimer2 300