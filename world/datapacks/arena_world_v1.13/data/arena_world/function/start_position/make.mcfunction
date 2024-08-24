#
# Description:  Make an arena start position
# Positioned:   At the block the arena world marker should be placed
#

execute store result storage arena_world:start_position y_rotation double 1 run function arena_world:util/get_direction
execute align xyz positioned ~0.5 ~ ~0.5 summon marker run function arena_world:start_position/create with storage arena_world:start_position
data remove storage arena_world:start_position y_rotation