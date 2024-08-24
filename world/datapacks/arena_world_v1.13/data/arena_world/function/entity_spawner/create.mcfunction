#
# Description:  Make a marker an arena entity marker
# Entity @s:    Entity spawner marker
#
# Parameters:
# tag
#

execute unless entity @s[type=marker] run return fail

tag @s add arena_world_entity_spawner_marker

$tag @s add $(tag)