#
# Description:  Clear the preview entity for an arena entity marker
# Entity @s:    Arena entity marker to clear preview entity for
#

execute unless predicate arena_world:entity_spawner run return fail

function arena_world:util/uuid
function arena_world:entity_spawner/kill_preview with storage arena_elevator:util
data remove storage arena_elevator:util uuid