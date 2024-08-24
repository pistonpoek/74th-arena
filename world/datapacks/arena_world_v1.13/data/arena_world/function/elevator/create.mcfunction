#
# Description:  Make the marker an arena world elevator
# Entity @s:    Marker with rotation from bottom left corner to entry corner
#
# Parameters:
# y_rotation
#

execute unless entity @s[type=marker] run return fail

$data modify entity @s Rotation set value [$(y_rotation).0f,0.0f]

# Move the created elevator door marker back right
execute at @s run tp ^-1 ^ ^-1

tag @s add arena_world_elevator