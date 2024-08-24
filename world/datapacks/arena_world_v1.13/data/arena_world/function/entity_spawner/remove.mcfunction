#
# Description:  Remove the arena entity marker
# Entity @s:    Arena entity marker to remove
#

execute unless predicate arena_world:entity_spawner run return fail

function arena_world:entity_spawner/clear_preview
kill @s