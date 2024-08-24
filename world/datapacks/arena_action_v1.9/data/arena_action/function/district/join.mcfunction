#
# Description:  Join a district team
# Entity @s:    Tribute to join a district team
#
# Parameters:
# district
#

execute unless predicate arena_action:tribute run return fail

$team join district_$(district) @s