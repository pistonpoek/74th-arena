#
# Description:  Finish the lifting for all elevators not in progress
#

execute as @e if predicate arena_elevator:arena_elevator \
 if entity @s[tag=arena_elevator_lifting] \
 unless function arena_elevator:control/in_progress \
 run function arena_elevator:finish