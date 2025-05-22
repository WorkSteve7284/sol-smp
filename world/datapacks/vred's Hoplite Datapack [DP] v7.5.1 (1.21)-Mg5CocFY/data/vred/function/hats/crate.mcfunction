execute if score @s crate_cooldown matches 0 if entity @s[advancements={vred:right_click/crate1=true}] run function vred:hats/normal_crate
execute if score @s crate_cooldown matches 0 if entity @s[advancements={vred:right_click/crate2=true}] run function vred:hats/shiny_crate
execute if score @s crate_cooldown matches 0 if entity @s[advancements={vred:right_click/crate3=true}] run function vred:hats/skin_crate
execute if score @s crate_cooldown matches 0 if entity @s[advancements={vred:right_click/crate4=true}] run function vred:hats/xmas_crate
execute if score @s crate_cooldown matches 0 if entity @s[advancements={vred:right_click/crate5=true}] run function vred:hats/legacy_crate

advancement revoke @s only vred:right_click/crate1
advancement revoke @s only vred:right_click/crate2
advancement revoke @s only vred:right_click/crate3
advancement revoke @s only vred:right_click/crate4
advancement revoke @s only vred:right_click/crate5
