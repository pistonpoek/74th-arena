#
# Description:  Load the arena actions datapack
# 

# Add triggers
function arena_action:action/trigger/load

function arena_action:death/load

function arena_action:world_border/load

# Set the game duration to be 8 minutes
execute unless data storage arena_action:. settings.duration run \
    data modify storage arena_action:. settings.duration set value 480

# Set the difficulty
difficulty hard

# Set the game rules
gamerule announceAdvancements false
gamerule doEntityDrops true
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doInsomnia false
gamerule doLimitedCrafting true
gamerule doMobLoot true
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops false
gamerule doTraderSpawning false
gamerule doVinesSpread false
gamerule doWardenSpawning false
gamerule doWeatherCycle false
gamerule forgiveDeadPlayers true
gamerule keepInventory false
gamerule mobGriefing false
gamerule projectilesCanBreakBlocks false
gamerule doDaylightCycle false
time set 500s
