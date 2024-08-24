#
# Description:  Load the data for the terrestrial animals
#

execute unless data storage arena_world:animal chicken run \
    data modify storage arena_world:animal chicken set value {amount:5,nbt:{}}
    
execute unless data storage arena_world:animal cow run \
    data modify storage arena_world:animal cow set value {amount:3,nbt:{}}

execute unless data storage arena_world:animal pig run \
    data modify storage arena_world:animal pig set value {amount:5,nbt:{}}

execute unless data storage arena_world:animal sheep run \
    data modify storage arena_world:animal sheep set value {amount:5,nbt:{}}

execute unless data storage arena_world:animal rabbit run \
    data modify storage arena_world:animal rabbit set value {amount:12,nbt:{}}