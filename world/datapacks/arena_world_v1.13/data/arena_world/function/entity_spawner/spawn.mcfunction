#
# Description:  Spawn an entity for an arena entity marker
# Entity @s:    Arena entity marker to spawn an entity at
#
# Parameters:
# id
# nbt
#

execute unless predicate arena_world:entity_spawner run return fail

$execute at @s align xyz positioned ~0.5 ~ ~0.5 run summon $(id) ~ ~ ~ {Tags:["initiating_arena_world_entity","arena_world_entity"],PersistenceRequired:1b}

$execute as @e[tag=initiating_arena_world_entity] run data merge entity @s $(nbt)

execute as @e[tag=initiating_arena_world_entity] run tag @s remove initiating_arena_world_entity