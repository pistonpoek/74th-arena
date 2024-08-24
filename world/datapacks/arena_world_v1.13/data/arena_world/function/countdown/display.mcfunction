#
# Description:  Set the countdown to a specific string
# Entity @s:    Countdown text display
#
# Parameters:
# text
#

execute unless predicate arena_world:countdown run return fail

$data modify entity @s text set value '{"text":"$(text)","color":"gold","bold":true}'