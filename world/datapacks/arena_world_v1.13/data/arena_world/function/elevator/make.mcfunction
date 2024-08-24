#
# Description:  Make an elevator with door
# Entity @s:    Entity to make elevator at
# 

execute store result storage arena_world:elevator y_rotation double 1 run function arena_world:util/get_direction
execute align xyz at @s summon marker run function arena_world:elevator/create with storage arena_world:elevator
data remove storage arena_world:elevator y_rotation

execute if function arena_elevator:alive run \
    execute positioned ~ ~ ~ align xyz run function arena_elevator:create {block:"polished_blackstone",height:10}