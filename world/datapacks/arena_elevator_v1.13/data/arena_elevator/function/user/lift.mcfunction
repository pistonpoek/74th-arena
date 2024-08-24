#
# Description:  Update the user tags on lift
# Entity @s:    Display block elevator
#

function arena_elevator:util/uuid
data modify storage arena_elevator:user input.tag set from storage arena_elevator:util uuid
data remove storage arena_elevator:util uuid

execute at @s as @a[dx=0,dy=.25,dz=0] run \
    function arena_elevator:util/tag_add with storage arena_elevator:user input
    
data remove storage arena_elevator:user input