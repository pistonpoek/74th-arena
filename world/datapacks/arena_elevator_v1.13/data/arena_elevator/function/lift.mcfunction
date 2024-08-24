#
# Entity @s:    Block display elevator
#

execute unless predicate arena_elevator:arena_elevator run return fail

tag @s add arena_elevator_lifting

function arena_elevator:user/lift

function arena_elevator:block/clear
function arena_elevator:control/lift
function arena_elevator:display/lift
function arena_elevator:levitate/lift
function arena_elevator:sound/lift