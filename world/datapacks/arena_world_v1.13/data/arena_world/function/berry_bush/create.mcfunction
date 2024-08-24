#
# Description:  Create a berry bush in the arena world
# Positioned:   At the block the berry bush should be placed
#

execute align xyz run summon marker ~ ~ ~ {Tags:["arena_world_berry_bush"]}

execute align xyz run setblock ~ ~ ~ sweet_berry_bush[age=3]