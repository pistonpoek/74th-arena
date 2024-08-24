#
# Description:  Load the loot data
#

execute unless data storage arena_world:loot cornucopia run \
    data modify storage arena_world:loot cornucopia set value {tag:loot,amount:99}

execute unless data storage arena_world:loot woods run \
    data modify storage arena_world:loot woods set value {tag:land,amount:160}

execute unless data storage arena_world:loot river run \
    data modify storage arena_world:loot river set value {tag:water,amount:12}