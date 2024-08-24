#
# Description:  Reset an elevator from lifting
# Entity @s:    Block display elevator
#

tag @s remove arena_elevator_lifting

function arena_elevator:block/set
function arena_elevator:display/lower
function arena_elevator:levitate/reset
function arena_elevator:sound/reset

function arena_elevator:user/reset