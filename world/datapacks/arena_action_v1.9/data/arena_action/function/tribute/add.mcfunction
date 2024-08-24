#
# Description:  Add a player as a tribute
# Entity @s:    Player to make a tribute
#

execute unless entity @s[type=player] run return fail

tag @s add arena_action_tribute

gamemode adventure @s