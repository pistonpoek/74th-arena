#
# Description:  Remove the executing arena world elevator marker
# Entity @s:    Arena world elevator marker
#

execute unless predicate arena_world:elevator run return fail

kill @s