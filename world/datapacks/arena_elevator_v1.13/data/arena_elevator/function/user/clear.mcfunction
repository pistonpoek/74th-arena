#
# Description:  Clear the tag of entities
# Entity @s:    Potential entity to clear tag for
#
# Parameters:
# tag
#

$execute as @s[tag=$(tag)] run function arena_elevator:util/tag_remove {tag:$(tag)}