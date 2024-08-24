#
# Description:  Get the rotation value for the ordinal direction of the entity
# Entity @s:    Entity to get the ordinal rotation value for
#

execute if entity @s[y_rotation=-45..45] run return 0
execute if entity @s[y_rotation=45..135] run return 90
execute if entity @s[y_rotation=-135..-45] run return -90
execute if entity @s[y_rotation=135..-135] run return 180