#
# Description:  Clean the tribute from items, damage and power
#

execute unless predicate arena_action:tribute run return fail

# Clear player effects
effect clear @s

# Restore tributes health and saturation
effect give @s minecraft:instant_health 1 8 true
effect give @s minecraft:saturation 1 255 true

# Remove tributes power
gamemode adventure @s

# Remove tributes items
clear @s

# Remove tribute xp
xp set @s 0 levels
xp set @s 0 points