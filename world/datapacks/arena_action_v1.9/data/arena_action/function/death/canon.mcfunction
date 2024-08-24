#
# Description:  Play the canon sound effect
# Entity @s:    Player to hear the sound effect
#

execute at @s run playsound minecraft:entity.firework_rocket.blast_far block @s ~ ~ ~ 1 0.7
execute at @s run playsound minecraft:block.note_block.basedrum block @s ~ ~ ~ 1 1
execute at @s run playsound minecraft:block.note_block.basedrum block @s ~ ~ ~ 1 0.8
execute at @s run playsound minecraft:entity.firework_rocket.blast_far block @s ~ ~ ~ 1 0.1