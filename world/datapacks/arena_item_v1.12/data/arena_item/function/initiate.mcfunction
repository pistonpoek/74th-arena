#
# Description:  Initiate the arena item entities
# Entity @s:    Initiating arena item
#

tag @s remove initiating_arena_item

function arena_item:interaction/create
execute on passengers run function arena_item:item_display/create