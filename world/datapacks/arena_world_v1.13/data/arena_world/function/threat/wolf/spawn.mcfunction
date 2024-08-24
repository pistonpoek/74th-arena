#
# Description:  Spawn wolfs into the arena
# Entity @s:    Entity spawner to spawn the wolf at
#

execute unless predicate arena_world:entity_spawner run return fail

function arena_world:entity_spawner/spawn {id:wolf,nbt:{variant:"minecraft:woods",DeathLootTable:"minecraft:empty",AngerTime:10000000}}

function arena_world:threat/wolf/keep_angry