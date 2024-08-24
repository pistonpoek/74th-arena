#
# Description:  Spawn an entity for an arena entity marker
# Entity @s:    Arena entity marker to preview a entity at
#
# Parameters:
# id
#

execute unless predicate arena_world:entity_spawner run return fail

data modify storage arena_world_entity_spawner input set value {}

$data modify storage arena_world_entity_spawner input.id set value $(id)
data modify storage arena_world_entity_spawner input.nbt set value {Tags:["arena_world_entity_preview"],Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,DeathLootTable:"minecraft:empty"}

function arena_world:util/uuid
data modify storage arena_world_entity_spawner input.nbt.Tags append from storage arena_elevator:util uuid
data remove storage arena_elevator:util uuid

function arena_world:entity_spawner/spawn with storage arena_world_entity_spawner input

data remove storage arena_world_entity_spawner input