#
# Description:  Create a countdown display in the arena world
# Entity @s:    Text display
#
# Paramters:
# y_rotation
#

execute unless entity @s[type=text_display] run return fail

tag @s add arena_world_countdown

$data modify entity @s Rotation set value [$(y_rotation).0f,0.0f]

data modify entity @s background set value 0

data modify entity @s transformation.scale set value [8f,8f,8f]