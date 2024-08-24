#
# Description:  Remove the campfire marker
# Entity @s:    Campfire marker to remove
#

execute unless predicate arena_world:campfire run return fail

kill @s