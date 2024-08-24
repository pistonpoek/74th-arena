#
# Description:  Add a player as a gamemaker
# Entity @s:    Player to make a gamemaker
#

execute unless entity @s[type=player] run return fail

tag @s add arena_action_gamemaker