#
# Description:  Reset the users for this elevator
# Entity @s:    Block display elevator
#

function arena_elevator:util/uuid
data modify storage arena_elevator:user input.tag set from storage arena_elevator:util uuid
data remove storage arena_elevator:util uuid

execute as @a run function arena_elevator:user/clear with storage arena_elevator:user input
    
data remove storage arena_elevator:user input