#
# Description:  Make an arena countdown
#

execute store result storage arena_world:countdown y_rotation double 1 run function arena_world:util/get_direction
execute align xyz positioned ~0.5 ~-0.25 ~0.5 summon text_display run function arena_world:countdown/create with storage arena_world:countdown
data remove storage arena_world:countdown y_rotation