#
# Description:  Return the tributes to the catacombs
# Entity @s:    Catacombs location marker
#

execute unless predicate arena_action:location_catacombs run return fail

tp @a[predicate=arena_action:tribute] @s

execute at @s run spawnpoint @a[predicate=arena_action:tribute] ~ ~ ~ ~