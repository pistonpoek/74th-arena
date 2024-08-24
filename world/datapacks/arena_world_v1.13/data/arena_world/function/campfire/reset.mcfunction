#
# Description:  Reset the campfire
# Entity @s:    Campfire marker to reset campfire for
#

execute unless predicate arena_world:campfire run return fail

execute at @s unless block ~ ~ ~ campfire run say No campfire found at campfire marker, placing unlit campfire.

execute at @s run setblock ~ ~ ~ campfire[lit=false]