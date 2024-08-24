#
# Description:  Kill the spawned arena entity
# Entity @s:    Arena entity that was spawned
#

execute unless predicate arena_world:entity run return fail

data modify entity @s DeathLootTable set value "minecraft:empty"

kill @s