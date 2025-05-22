data modify storage vred:macro Owner set from entity @s UUID
execute if predicate vred:evoker_wand_skin run particle snowflake ~ ~1 ~ 0.2 0.2 0.2 0.01 20 force
execute positioned ~ ~1 ~ summon evoker_fangs run function vred:evoker_wand/raycast/summon_fang