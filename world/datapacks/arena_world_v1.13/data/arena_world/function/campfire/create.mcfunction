#
# Description:  Create a campfire in the arena world
# Entity @s:    Marker
#

execute unless entity @s[type=marker] run return fail

tag @s add arena_world_campfire

execute at @s run setblock ~ ~ ~ campfire[lit=false]