#
# Description:  Load the data for the aquatic animals
#

execute unless data storage arena_world:animal cod run \
    data modify storage arena_world:animal cod set value {amount:5,nbt:{}}

execute unless data storage arena_world:animal salmon run \
    data modify storage arena_world:animal salmon set value {amount:5,nbt:{}}