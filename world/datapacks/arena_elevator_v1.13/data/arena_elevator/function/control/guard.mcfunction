#
# Description:  Summon the control lift guard
# Entity @s:    Area effect cloud to make guard
#
# Parameters:
# uuid
# duration
#

execute unless entity @s[type=area_effect_cloud] run return fail

tag @s add arena_elevator_guard

$tag @s add $(uuid)

$data modify entity @s Duration set value $(duration)

# Ensure the area effect cloud is gone at the end of the duration.
data modify entity @s Age set value 1