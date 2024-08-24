#
# Description:  Check if a guard for the specified UUID exists
# Return:       1 if exists and 0 if not.
#
# Parameters:
# uuid
#

$execute as @e if predicate arena_elevator:control_guard if entity @s[tag=$(uuid)] run return 1
return fail