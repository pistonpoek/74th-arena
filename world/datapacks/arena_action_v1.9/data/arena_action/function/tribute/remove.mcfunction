#
# Description:  Remove a tribute role
# Entity @s:    Tribute player to remove role from
#

execute unless predicate arena_action:tribute run return fail

function arena_action:district/leave

tag @s remove arena_action_tribute