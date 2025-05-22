scoreboard players operation #j ID = @s ID
execute if entity @s[tag=!jolly] summon marker run function vred:sculkweavers_lantern/dome1/marker
execute if entity @s[tag=jolly] summon marker run function vred:sculkweavers_lantern/jolly_dome/marker
execute on passengers run kill @s
kill @s