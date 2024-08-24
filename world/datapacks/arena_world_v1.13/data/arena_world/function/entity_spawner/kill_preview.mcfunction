#
# Description:  Kill a preview entity for the specified arena entity marker uuid
#
# Parameters:
# uuid
#

$execute as @e[predicate=arena_world:entity_preview,tag=$(uuid)] run kill @s