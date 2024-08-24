#
# Description:  Make the marker an arena world start position
# Entity @s:    Marker
#
# Parameters:
# y_rotation
#

execute unless entity @s[type=marker] run return fail

$data modify entity @s Rotation set value [$(y_rotation).0f,0.0f]

tag @s add arena_world_start_position