tag @s add magma_club
particle lava ~ ~ ~ 6 0 6 0 150
particle explosion_emitter
playsound minecraft:entity.generic.explode hostile @a[distance=..20]
$execute as @e[distance=..12,tag=!magma_club,predicate=!vred:stuff] at @s run damage @s $(magma_club) player_attack by @a[tag=magma_club,limit=1]
execute as @e[distance=..12,tag=!magma_club,predicate=!vred:stuff,type=!player] at @s run data merge entity @s {Fire:100s}
execute as @a[distance=..12,tag=!magma_club,predicate=!vred:stuff,tag=!magma_club] at @s run summon minecraft:fireball ~ ~3 ~ {Motion:[0.0,-10.0,0.0]}
execute if score #skins_vfx.enabled item_check matches 1.. if predicate vred:magma_club_skin positioned ~ ~ ~ run function vred:magma_club/particle
tag @s remove magma_club
scoreboard players add @s[tag=!no_cooldown] magma_cooldown 120