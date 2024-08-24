#
# Description:  Give the specified item stack to the executer
# Entity @s:    Entity to receive the specified item
#
# Parameters:
# item
#

# Summon item with item that will be picked up by the specified entity immediatly
$execute at @s run summon item ~ ~ ~ {Item:$(item),Tags:["arena_item_util_give"],PickupDelay:0}
data modify entity @e[type=item,tag=arena_item_util_give,distance=0,limit=1] Owner set from entity @s UUID