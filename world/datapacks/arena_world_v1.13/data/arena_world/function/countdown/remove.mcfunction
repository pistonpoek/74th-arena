#
# Description:  Remove the countdown text display
# Entity @s:    Countdown text display
#

execute unless predicate arena_world:countdown run return fail

kill @s