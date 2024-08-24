#
# Description:  Receive the currenlty selected sponsor item 
# Entity @s:    Tribute to receive the sponsor item
#

execute unless predicate arena_action:tribute run return fail

function arena_action:util/give with storage arena_action:. selected_sponsor_item