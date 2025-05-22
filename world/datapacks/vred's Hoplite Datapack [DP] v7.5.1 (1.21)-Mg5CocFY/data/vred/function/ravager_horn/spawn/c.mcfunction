$team join $(id).internal_team @s
data merge entity @s {NoAI:0b}
attribute @s generic.max_health modifier add vred:ravager 0.5 add_multiplied_total
tag @s add id.added