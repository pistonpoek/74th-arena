#
# Description:  Remove a gamemaker role
# Entity @s:    Gamemaker player to remove role from
#

execute unless predicate arena_action:gamemaker run return fail

tag @s remove arena_action_gamemaker