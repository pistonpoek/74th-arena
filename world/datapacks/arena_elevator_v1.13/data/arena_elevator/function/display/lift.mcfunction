#
# Description:  Lift the block display
# Entity @s:    Block display elevator
#

execute unless predicate arena_elevator:arena_elevator run return fail

# Set the interpolation settings
data modify entity @s start_interpolation set from storage arena_elevator:. settings.display_delay
execute store result entity @s interpolation_duration int 1 run function arena_elevator:control/duration

# Set the block display to move up to the top position of the elevator.
function arena_elevator:display/top_position
execute store result entity @s transformation.translation[1] float 1 run data get storage arena_elevator:temp top_position
data remove storage arena_elevator:temp top_position