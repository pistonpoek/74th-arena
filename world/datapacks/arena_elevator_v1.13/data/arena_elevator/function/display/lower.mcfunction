#
# Description:  Lower the block display
# Entity @s:    Block display elevator
#

execute unless predicate arena_elevator:arena_elevator run return fail

data merge entity @s {start_interpolation:-1,interpolation_duration:0}

execute store result entity @s transformation.translation[1] float 1 run data get storage arena_elevator:. settings.height_offset