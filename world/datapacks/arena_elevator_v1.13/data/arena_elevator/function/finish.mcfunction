#
# Entity @s:    Block display elevator
#

execute unless predicate arena_elevator:arena_elevator_lifting run return fail

function arena_elevator:block/set
function arena_elevator:display/lower
function arena_elevator:levitate/finish
function arena_elevator:sound/finish

function arena_elevator:user/finish